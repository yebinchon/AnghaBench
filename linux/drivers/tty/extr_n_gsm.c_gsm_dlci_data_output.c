
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gsm_mux {int mtu; int ftype; } ;
struct gsm_msg {int * data; } ;
struct gsm_dlci {int adaption; int lock; int fifo; int addr; } ;


 int ENOMEM ;
 int WARN_ON (int) ;
 int __gsm_data_queue (struct gsm_dlci*,struct gsm_msg*) ;
 struct gsm_msg* gsm_data_alloc (struct gsm_mux*,int ,int,int ) ;
 int gsm_encode_modem (struct gsm_dlci*) ;
 int kfifo_len (int ) ;
 int kfifo_out_locked (int ,int *,int,int *) ;

__attribute__((used)) static int gsm_dlci_data_output(struct gsm_mux *gsm, struct gsm_dlci *dlci)
{
 struct gsm_msg *msg;
 u8 *dp;
 int len, total_size, size;
 int h = dlci->adaption - 1;

 total_size = 0;
 while (1) {
  len = kfifo_len(dlci->fifo);
  if (len == 0)
   return total_size;


  if (len > gsm->mtu)
   len = gsm->mtu;

  size = len + h;

  msg = gsm_data_alloc(gsm, dlci->addr, size, gsm->ftype);


  if (msg == ((void*)0))
   return -ENOMEM;
  dp = msg->data;
  switch (dlci->adaption) {
  case 1:
   break;
  case 2:

   *dp++ = gsm_encode_modem(dlci);
   break;
  }
  WARN_ON(kfifo_out_locked(dlci->fifo, dp , len, &dlci->lock) != len);
  __gsm_data_queue(dlci, msg);
  total_size += size;
 }

 return total_size;
}
