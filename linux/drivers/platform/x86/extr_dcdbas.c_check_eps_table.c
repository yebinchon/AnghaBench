
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smm_eps_table {int length; int smm_comm_buff_anchor; } ;


 int SMM_EPS_SIG ;
 scalar_t__ checksum (int *,int ) ;
 scalar_t__ strncmp (int ,int ,int) ;

__attribute__((used)) static inline struct smm_eps_table *check_eps_table(u8 *addr)
{
 struct smm_eps_table *eps = (struct smm_eps_table *)addr;

 if (strncmp(eps->smm_comm_buff_anchor, SMM_EPS_SIG, 4) != 0)
  return ((void*)0);

 if (checksum(addr, eps->length) != 0)
  return ((void*)0);

 return eps;
}
