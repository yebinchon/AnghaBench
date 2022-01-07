
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_tunnel {scalar_t__ type; } ;


 scalar_t__ TB_TUNNEL_DP ;

__attribute__((used)) static inline bool tb_tunnel_is_dp(const struct tb_tunnel *tunnel)
{
 return tunnel->type == TB_TUNNEL_DP;
}
