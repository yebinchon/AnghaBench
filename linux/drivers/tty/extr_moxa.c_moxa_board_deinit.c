
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moxa_board_conf {unsigned int numPorts; TYPE_1__* ports; int * basemem; scalar_t__ ready; } ;
struct TYPE_2__ {int port; } ;


 unsigned int MAX_PORTS_PER_BOARD ;
 int iounmap (int *) ;
 int kfree (TYPE_1__*) ;
 int moxaDriver ;
 struct moxa_board_conf* moxa_boards ;
 int moxa_lock ;
 int moxa_openlock ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tty_port_destroy (int *) ;
 scalar_t__ tty_port_initialized (int *) ;
 int tty_port_tty_hangup (int *,int) ;
 int tty_unregister_device (int ,unsigned int) ;

__attribute__((used)) static void moxa_board_deinit(struct moxa_board_conf *brd)
{
 unsigned int a, opened, first_idx;

 mutex_lock(&moxa_openlock);
 spin_lock_bh(&moxa_lock);
 brd->ready = 0;
 spin_unlock_bh(&moxa_lock);


 for (a = 0; a < brd->numPorts; a++)
  if (tty_port_initialized(&brd->ports[a].port))
   tty_port_tty_hangup(&brd->ports[a].port, 0);

 for (a = 0; a < MAX_PORTS_PER_BOARD; a++)
  tty_port_destroy(&brd->ports[a].port);

 while (1) {
  opened = 0;
  for (a = 0; a < brd->numPorts; a++)
   if (tty_port_initialized(&brd->ports[a].port))
    opened++;
  mutex_unlock(&moxa_openlock);
  if (!opened)
   break;
  msleep(50);
  mutex_lock(&moxa_openlock);
 }

 first_idx = (brd - moxa_boards) * MAX_PORTS_PER_BOARD;
 for (a = 0; a < brd->numPorts; a++)
  tty_unregister_device(moxaDriver, first_idx + a);

 iounmap(brd->basemem);
 brd->basemem = ((void*)0);
 kfree(brd->ports);
}
