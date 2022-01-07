
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rp2_uart_port {int dummy; } ;


 int rp2_rmw (struct rp2_uart_port*,int,int ,int ) ;

__attribute__((used)) static void rp2_rmw_set(struct rp2_uart_port *up, int reg, u32 val)
{
 rp2_rmw(up, reg, 0, val);
}
