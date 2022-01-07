
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;
struct jsm_channel {TYPE_1__ uart_port; } ;
struct jsm_board {int nasync; int maxports; int pci_dev; struct jsm_channel** channels; } ;


 int ENXIO ;
 int INIT ;
 int clear_bit (int ,int ) ;
 int jsm_dbg (int ,int *,char*) ;
 int jsm_uart_driver ;
 int linemap ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

int jsm_remove_uart_port(struct jsm_board *brd)
{
 int i;
 struct jsm_channel *ch;

 if (!brd)
  return -ENXIO;

 jsm_dbg(INIT, &brd->pci_dev, "start\n");





 brd->nasync = brd->maxports;


 for (i = 0; i < brd->nasync; i++) {

  if (!brd->channels[i])
   continue;

  ch = brd->channels[i];

  clear_bit(ch->uart_port.line, linemap);
  uart_remove_one_port(&jsm_uart_driver, &brd->channels[i]->uart_port);
 }

 jsm_dbg(INIT, &brd->pci_dev, "finish\n");
 return 0;
}
