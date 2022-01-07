
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {TYPE_1__* dev; int status; struct mux_tx* context; } ;
struct mux_tx {int cb_data; int (* callback ) (int ) ;} ;
struct TYPE_2__ {int dev; } ;


 int ECONNRESET ;
 int dev_info (int *,char*) ;
 int free_mux_tx (struct mux_tx*) ;
 int stub1 (int ) ;

__attribute__((used)) static void gdm_mux_send_complete(struct urb *urb)
{
 struct mux_tx *t = urb->context;

 if (urb->status == -ECONNRESET) {
  dev_info(&urb->dev->dev, "CONNRESET\n");
  free_mux_tx(t);
  return;
 }

 if (t->callback)
  t->callback(t->cb_data);

 free_mux_tx(t);
}
