
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {int regshift; scalar_t__ membase; int dev; } ;
struct sccnxp_port {TYPE_1__* chip; } ;
struct TYPE_2__ {int trwd; } ;


 struct sccnxp_port* dev_get_drvdata (int ) ;
 int ndelay (int ) ;
 int readb (scalar_t__) ;

__attribute__((used)) static u8 sccnxp_read(struct uart_port *port, u8 reg)
{
 struct sccnxp_port *s = dev_get_drvdata(port->dev);
 u8 ret;

 ret = readb(port->membase + (reg << port->regshift));

 ndelay(s->chip->trwd);

 return ret;
}
