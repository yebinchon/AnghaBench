
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mxser_board {int irq; TYPE_2__* ports; scalar_t__ idx; TYPE_1__* info; } ;
struct TYPE_4__ {int port; } ;
struct TYPE_3__ {unsigned int nports; } ;


 int free_irq (int ,struct mxser_board*) ;
 int mxvar_sdriver ;
 int tty_port_destroy (int *) ;
 int tty_unregister_device (int ,scalar_t__) ;

__attribute__((used)) static void mxser_board_remove(struct mxser_board *brd)
{
 unsigned int i;

 for (i = 0; i < brd->info->nports; i++) {
  tty_unregister_device(mxvar_sdriver, brd->idx + i);
  tty_port_destroy(&brd->ports[i].port);
 }
 free_irq(brd->irq, brd);
}
