
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7621_pcie_port {int dummy; } ;


 int msleep (int) ;
 int mt7621_control_assert (struct mt7621_pcie_port*) ;
 int mt7621_control_deassert (struct mt7621_pcie_port*) ;

__attribute__((used)) static void mt7621_reset_port(struct mt7621_pcie_port *port)
{
 mt7621_control_assert(port);
 msleep(100);
 mt7621_control_deassert(port);
}
