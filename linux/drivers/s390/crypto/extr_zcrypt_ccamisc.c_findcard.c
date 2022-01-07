
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u16 ;
struct zcrypt_device_status_ext {int functions; int qid; scalar_t__ online; } ;
struct cca_info {int hwtype; char cur_mk_state; scalar_t__ cur_mkvp; char old_mk_state; scalar_t__ old_mkvp; } ;


 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ZDEV_ENTRIES_EXT ;
 scalar_t__ cca_info_cache_fetch (int ,int ,struct cca_info*) ;
 int cca_info_cache_scrub (int ,int ) ;
 int cca_info_cache_update (int ,int ,struct cca_info*) ;
 scalar_t__ fetch_cca_info (int ,int ,struct cca_info*) ;
 int kfree (struct zcrypt_device_status_ext*) ;
 struct zcrypt_device_status_ext* kmalloc_array (int,int,int ) ;
 int zcrypt_device_status_mask_ext (struct zcrypt_device_status_ext*) ;

__attribute__((used)) static int findcard(u64 mkvp, u16 *pcardnr, u16 *pdomain,
      int verify, int minhwtype)
{
 struct zcrypt_device_status_ext *device_status;
 u16 card, dom;
 struct cca_info ci;
 int i, rc, oi = -1;


 if (mkvp == 0 || minhwtype < 0)
  return -EINVAL;


 device_status = kmalloc_array(MAX_ZDEV_ENTRIES_EXT,
          sizeof(struct zcrypt_device_status_ext),
          GFP_KERNEL);
 if (!device_status)
  return -ENOMEM;
 zcrypt_device_status_mask_ext(device_status);


 for (i = 0; i < MAX_ZDEV_ENTRIES_EXT; i++) {
  card = AP_QID_CARD(device_status[i].qid);
  dom = AP_QID_QUEUE(device_status[i].qid);
  if (device_status[i].online &&
      device_status[i].functions & 0x04) {

   if (cca_info_cache_fetch(card, dom, &ci) == 0 &&
       ci.hwtype >= minhwtype &&
       ci.cur_mk_state == '2' &&
       ci.cur_mkvp == mkvp) {
    if (!verify)
     break;

    if (fetch_cca_info(card, dom, &ci) == 0) {
     cca_info_cache_update(card, dom, &ci);
     if (ci.hwtype >= minhwtype &&
         ci.cur_mk_state == '2' &&
         ci.cur_mkvp == mkvp)
      break;
    }
   }
  } else {


   cca_info_cache_scrub(card, dom);
  }
 }
 if (i >= MAX_ZDEV_ENTRIES_EXT) {

  for (i = 0; i < MAX_ZDEV_ENTRIES_EXT; i++) {
   if (!(device_status[i].online &&
         device_status[i].functions & 0x04))
    continue;
   card = AP_QID_CARD(device_status[i].qid);
   dom = AP_QID_QUEUE(device_status[i].qid);

   if (fetch_cca_info(card, dom, &ci) == 0) {
    cca_info_cache_update(card, dom, &ci);
    if (ci.hwtype >= minhwtype &&
        ci.cur_mk_state == '2' &&
        ci.cur_mkvp == mkvp)
     break;
    if (ci.hwtype >= minhwtype &&
        ci.old_mk_state == '2' &&
        ci.old_mkvp == mkvp &&
        oi < 0)
     oi = i;
   }
  }
  if (i >= MAX_ZDEV_ENTRIES_EXT && oi >= 0) {

   card = AP_QID_CARD(device_status[oi].qid);
   dom = AP_QID_QUEUE(device_status[oi].qid);
  }
 }
 if (i < MAX_ZDEV_ENTRIES_EXT || oi >= 0) {
  if (pcardnr)
   *pcardnr = card;
  if (pdomain)
   *pdomain = dom;
  rc = (i < MAX_ZDEV_ENTRIES_EXT ? 0 : 1);
 } else
  rc = -ENODEV;

 kfree(device_status);
 return rc;
}
