
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; } ;
struct TYPE_2__ {int DTR; } ;
struct port {int update_flow_control; TYPE_1__ ctrl_ul; } ;


 int DBG1 (char*,int ,int) ;
 int PORT_CTRL ;
 int enable_transmit_ul (int ,int ) ;
 int get_dc_by_tty (struct tty_struct const*) ;
 struct port* get_port_by_tty (struct tty_struct const*) ;

__attribute__((used)) static void set_dtr(const struct tty_struct *tty, int dtr)
{
 struct port *port = get_port_by_tty(tty);

 DBG1("SETTING DTR index: %d, dtr: %d", tty->index, dtr);

 port->ctrl_ul.DTR = dtr;
 port->update_flow_control = 1;
 enable_transmit_ul(PORT_CTRL, get_dc_by_tty(tty));
}
