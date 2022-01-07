
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int len; scalar_t__* data; } ;
struct pn533 {int poll_protocols; int poll_dep; } ;


 int EAGAIN ;
 int NFC_PROTO_NFC_DEP_MASK ;
 int pn533_target_found (struct pn533*,scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static int pn533_start_poll_complete(struct pn533 *dev, struct sk_buff *resp)
{
 u8 nbtg, tg, *tgdata;
 int rc, tgdata_len;


 if (dev->poll_protocols & NFC_PROTO_NFC_DEP_MASK)
  dev->poll_dep = 1;

 nbtg = resp->data[0];
 tg = resp->data[1];
 tgdata = &resp->data[2];
 tgdata_len = resp->len - 2;

 if (nbtg) {
  rc = pn533_target_found(dev, tg, tgdata, tgdata_len);


  if (rc == 0)
   return 0;
 }

 return -EAGAIN;
}
