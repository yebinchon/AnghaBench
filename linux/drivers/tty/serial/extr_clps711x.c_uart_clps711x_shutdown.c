
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;
struct clps711x_port {int syscon; } ;


 int SYSCON_OFFSET ;
 int SYSCON_UARTEN ;
 struct clps711x_port* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void uart_clps711x_shutdown(struct uart_port *port)
{
 struct clps711x_port *s = dev_get_drvdata(port->dev);


 regmap_update_bits(s->syscon, SYSCON_OFFSET, SYSCON_UARTEN, 0);
}
