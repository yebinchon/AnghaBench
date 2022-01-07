
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pcie_port {int io_target; int io_attr; } ;



__attribute__((used)) static inline bool mvebu_has_ioport(struct mvebu_pcie_port *port)
{
 return port->io_target != -1 && port->io_attr != -1;
}
