
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bfa_port_stats_u {int dummy; } bfa_port_stats_u ;
typedef int u32 ;
struct bfa_port_s {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static void
bfa_port_stats_swap(struct bfa_port_s *port, union bfa_port_stats_u *stats)
{
 u32 *dip = (u32 *) stats;
 __be32 t0, t1;
 int i;

 for (i = 0; i < sizeof(union bfa_port_stats_u)/sizeof(u32);
  i += 2) {
  t0 = dip[i];
  t1 = dip[i + 1];




  dip[i] = be32_to_cpu(t1);
  dip[i + 1] = be32_to_cpu(t0);

 }
}
