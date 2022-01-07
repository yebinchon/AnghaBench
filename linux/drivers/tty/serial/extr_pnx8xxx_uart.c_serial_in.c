
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct pnx8xxx_port {TYPE_1__ port; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline int serial_in(struct pnx8xxx_port *sport, int offset)
{
 return (__raw_readl(sport->port.membase + offset));
}
