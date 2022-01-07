
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; int line; } ;
struct ktermios {scalar_t__ c_line; } ;
struct clps711x_port {int syscon; } ;


 scalar_t__ N_IRDA ;
 int SYSCON1_SIREN ;
 int SYSCON_OFFSET ;
 struct clps711x_port* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void uart_clps711x_set_ldisc(struct uart_port *port,
        struct ktermios *termios)
{
 if (!port->line) {
  struct clps711x_port *s = dev_get_drvdata(port->dev);

  regmap_update_bits(s->syscon, SYSCON_OFFSET, SYSCON1_SIREN,
       (termios->c_line == N_IRDA) ? SYSCON1_SIREN : 0);
 }
}
