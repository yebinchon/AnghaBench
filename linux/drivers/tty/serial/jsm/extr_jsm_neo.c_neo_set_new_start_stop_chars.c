
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jsm_channel {int ch_c_cflag; TYPE_1__* ch_neo_uart; int ch_stopc; int ch_startc; TYPE_2__* ch_bd; } ;
struct TYPE_4__ {int pci_dev; } ;
struct TYPE_3__ {int xoffchar2; int xoffchar1; int xonchar2; int xonchar1; } ;


 int CRTSCTS ;
 int PARAM ;
 int jsm_dbg (int ,int *,char*) ;
 int writeb (int ,int *) ;

__attribute__((used)) static inline void neo_set_new_start_stop_chars(struct jsm_channel *ch)
{


 if (ch->ch_c_cflag & CRTSCTS)
  return;

 jsm_dbg(PARAM, &ch->ch_bd->pci_dev, "start\n");


 writeb(ch->ch_startc, &ch->ch_neo_uart->xonchar1);
 writeb(0, &ch->ch_neo_uart->xonchar2);

 writeb(ch->ch_stopc, &ch->ch_neo_uart->xoffchar1);
 writeb(0, &ch->ch_neo_uart->xoffchar2);
}
