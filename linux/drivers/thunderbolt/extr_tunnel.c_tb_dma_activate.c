
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_tunnel {struct tb_port* src_port; } ;
struct tb_port {int dummy; } ;


 int tb_dma_credits (struct tb_port*) ;
 int tb_port_set_initial_credits (struct tb_port*,int ) ;

__attribute__((used)) static int tb_dma_activate(struct tb_tunnel *tunnel, bool active)
{
 struct tb_port *nhi = tunnel->src_port;
 u32 credits;

 credits = active ? tb_dma_credits(nhi) : 0;
 return tb_port_set_initial_credits(nhi, credits);
}
