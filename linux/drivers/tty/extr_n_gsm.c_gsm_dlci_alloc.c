
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gsm_mux {struct gsm_dlci** dlci; int adaption; } ;
struct TYPE_2__ {int * ops; } ;
struct gsm_dlci {int addr; int data; int state; int adaption; struct gsm_mux* gsm; TYPE_1__ port; int t1; int skb_list; int _fifo; int * fifo; int mutex; int lock; } ;


 int DLCI_CLOSED ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int gsm_dlci_command ;
 int gsm_dlci_data ;
 int gsm_dlci_t1 ;
 int gsm_port_ops ;
 scalar_t__ kfifo_alloc (int *,int,int ) ;
 int kfree (struct gsm_dlci*) ;
 struct gsm_dlci* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int tty_port_init (TYPE_1__*) ;

__attribute__((used)) static struct gsm_dlci *gsm_dlci_alloc(struct gsm_mux *gsm, int addr)
{
 struct gsm_dlci *dlci = kzalloc(sizeof(struct gsm_dlci), GFP_ATOMIC);
 if (dlci == ((void*)0))
  return ((void*)0);
 spin_lock_init(&dlci->lock);
 mutex_init(&dlci->mutex);
 dlci->fifo = &dlci->_fifo;
 if (kfifo_alloc(&dlci->_fifo, 4096, GFP_KERNEL) < 0) {
  kfree(dlci);
  return ((void*)0);
 }

 skb_queue_head_init(&dlci->skb_list);
 timer_setup(&dlci->t1, gsm_dlci_t1, 0);
 tty_port_init(&dlci->port);
 dlci->port.ops = &gsm_port_ops;
 dlci->gsm = gsm;
 dlci->addr = addr;
 dlci->adaption = gsm->adaption;
 dlci->state = DLCI_CLOSED;
 if (addr)
  dlci->data = gsm_dlci_data;
 else
  dlci->data = gsm_dlci_command;
 gsm->dlci[addr] = dlci;
 return dlci;
}
