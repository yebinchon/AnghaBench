
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct zcrypt_device_status_ext {int functions; int online; int qid; } ;
struct cca_info {char cur_mk_state; int hwtype; scalar_t__ cur_mkvp; char old_mk_state; scalar_t__ old_mkvp; } ;


 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ZDEV_ENTRIES_EXT ;
 scalar_t__ cca_get_info (int,int,struct cca_info*,int) ;
 int kfree (struct zcrypt_device_status_ext*) ;
 void* kmalloc_array (int,int,int ) ;
 int zcrypt_device_status_mask_ext (struct zcrypt_device_status_ext*) ;

int cca_findcard2(u32 **apqns, u32 *nr_apqns, u16 cardnr, u16 domain,
    int minhwtype, u64 cur_mkvp, u64 old_mkvp, int verify)
{
 struct zcrypt_device_status_ext *device_status;
 int i, n, card, dom, curmatch, oldmatch, rc = 0;
 struct cca_info ci;

 *apqns = ((void*)0);
 *nr_apqns = 0;


 device_status = kmalloc_array(MAX_ZDEV_ENTRIES_EXT,
          sizeof(struct zcrypt_device_status_ext),
          GFP_KERNEL);
 if (!device_status)
  return -ENOMEM;
 zcrypt_device_status_mask_ext(device_status);


 while (1) {
  n = 0;

  for (i = 0; i < MAX_ZDEV_ENTRIES_EXT; i++) {
   card = AP_QID_CARD(device_status[i].qid);
   dom = AP_QID_QUEUE(device_status[i].qid);

   if (!device_status[i].online)
    continue;

   if (!(device_status[i].functions & 0x04))
    continue;

   if (cardnr != 0xFFFF && card != cardnr)
    continue;

   if (domain != 0xFFFF && dom != domain)
    continue;

   if (cca_get_info(card, dom, &ci, verify))
    continue;

   if (ci.cur_mk_state != '2')
    continue;

   if (minhwtype > 0 && minhwtype > ci.hwtype)
    continue;
   if (cur_mkvp || old_mkvp) {

    curmatch = oldmatch = 0;
    if (cur_mkvp && cur_mkvp == ci.cur_mkvp)
     curmatch = 1;
    if (old_mkvp && ci.old_mk_state == '2' &&
        old_mkvp == ci.old_mkvp)
     oldmatch = 1;
    if ((cur_mkvp || old_mkvp) &&
        (curmatch + oldmatch < 1))
     continue;
   }

   if (*apqns && n < *nr_apqns)
    (*apqns)[n] = (((u16)card) << 16) | ((u16) dom);
   n++;
  }

  if (*apqns)
   break;

  if (!n) {
   rc = -ENODEV;
   break;
  }
  *nr_apqns = n;

  *apqns = kmalloc_array(n, sizeof(u32), GFP_KERNEL);
  if (!*apqns) {
   rc = -ENOMEM;
   break;
  }
  verify = 0;
 }

 kfree(device_status);
 return rc;
}
