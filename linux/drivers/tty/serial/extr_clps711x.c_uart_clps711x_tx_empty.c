
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dev; } ;
struct clps711x_port {int syscon; } ;


 int SYSFLG_OFFSET ;
 int SYSFLG_UBUSY ;
 unsigned int TIOCSER_TEMT ;
 struct clps711x_port* dev_get_drvdata (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static unsigned int uart_clps711x_tx_empty(struct uart_port *port)
{
 struct clps711x_port *s = dev_get_drvdata(port->dev);
 u32 sysflg = 0;

 regmap_read(s->syscon, SYSFLG_OFFSET, &sysflg);

 return (sysflg & SYSFLG_UBUSY) ? 0 : TIOCSER_TEMT;
}
