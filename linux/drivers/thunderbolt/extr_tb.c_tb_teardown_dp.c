
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_port {int dummy; } ;
struct tb {int dummy; } ;


 int TB_TUNNEL_DP ;
 int tb_free_tunnel (struct tb*,int ,int *,struct tb_port*) ;

__attribute__((used)) static void tb_teardown_dp(struct tb *tb, struct tb_port *out)
{
 tb_free_tunnel(tb, TB_TUNNEL_DP, ((void*)0), out);
}
