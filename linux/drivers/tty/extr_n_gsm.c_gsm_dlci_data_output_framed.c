
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct gsm_mux {int mtu; int ftype; } ;
struct gsm_msg {int * data; } ;
struct gsm_dlci {int adaption; TYPE_1__* skb; int skb_list; int addr; } ;
struct TYPE_5__ {int len; int data; } ;


 int ENOMEM ;
 int __gsm_data_queue (struct gsm_dlci*,struct gsm_msg*) ;
 int dev_kfree_skb_any (TYPE_1__*) ;
 struct gsm_msg* gsm_data_alloc (struct gsm_mux*,int ,int,int ) ;
 int memcpy (int *,int ,int) ;
 TYPE_1__* skb_dequeue_tail (int *) ;
 int skb_pull (TYPE_1__*,int) ;
 int skb_queue_tail (int *,TYPE_1__*) ;

__attribute__((used)) static int gsm_dlci_data_output_framed(struct gsm_mux *gsm,
      struct gsm_dlci *dlci)
{
 struct gsm_msg *msg;
 u8 *dp;
 int len, size;
 int last = 0, first = 0;
 int overhead = 0;


 if (dlci->adaption == 4)
  overhead = 1;


 if (dlci->skb == ((void*)0)) {
  dlci->skb = skb_dequeue_tail(&dlci->skb_list);
  if (dlci->skb == ((void*)0))
   return 0;
  first = 1;
 }
 len = dlci->skb->len + overhead;


 if (len > gsm->mtu) {
  if (dlci->adaption == 3) {

   dev_kfree_skb_any(dlci->skb);
   dlci->skb = ((void*)0);
   return 0;
  }
  len = gsm->mtu;
 } else
  last = 1;

 size = len + overhead;
 msg = gsm_data_alloc(gsm, dlci->addr, size, gsm->ftype);



 if (msg == ((void*)0)) {
  skb_queue_tail(&dlci->skb_list, dlci->skb);
  dlci->skb = ((void*)0);
  return -ENOMEM;
 }
 dp = msg->data;

 if (dlci->adaption == 4) {

  *dp++ = last << 7 | first << 6 | 1;
  len--;
 }
 memcpy(dp, dlci->skb->data, len);
 skb_pull(dlci->skb, len);
 __gsm_data_queue(dlci, msg);
 if (last) {
  dev_kfree_skb_any(dlci->skb);
  dlci->skb = ((void*)0);
 }
 return size;
}
