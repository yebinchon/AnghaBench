
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_rport_s {int dummy; } ;
struct bfa_fcs_rport_s {struct bfa_rport_s* bfa_rport; } ;



__attribute__((used)) static inline struct bfa_rport_s *
bfa_fcs_rport_get_halrport(struct bfa_fcs_rport_s *rport)
{
 return rport->bfa_rport;
}
