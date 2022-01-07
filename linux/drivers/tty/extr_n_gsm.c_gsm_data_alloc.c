
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct gsm_mux {int dummy; } ;
struct gsm_msg {int len; int list; void* ctrl; void* addr; scalar_t__ buffer; scalar_t__ data; } ;


 int GFP_ATOMIC ;
 scalar_t__ HDR_LEN ;
 int INIT_LIST_HEAD (int *) ;
 struct gsm_msg* kmalloc (scalar_t__,int ) ;

__attribute__((used)) static struct gsm_msg *gsm_data_alloc(struct gsm_mux *gsm, u8 addr, int len,
        u8 ctrl)
{
 struct gsm_msg *m = kmalloc(sizeof(struct gsm_msg) + len + HDR_LEN,
        GFP_ATOMIC);
 if (m == ((void*)0))
  return ((void*)0);
 m->data = m->buffer + HDR_LEN - 1;
 m->len = len;
 m->addr = addr;
 m->ctrl = ctrl;
 INIT_LIST_HEAD(&m->list);
 return m;
}
