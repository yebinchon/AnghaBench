
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct init_sccb {int dummy; } ;


 int EVTYP_MSG_MASK ;
 int EVTYP_OPCMD_MASK ;
 int EVTYP_PMSGCMD_MASK ;
 int sccb_get_sclp_recv_mask (struct init_sccb*) ;
 int sccb_get_sclp_send_mask (struct init_sccb*) ;

unsigned int sclp_early_con_check_linemode(struct init_sccb *sccb)
{
 if (!(sccb_get_sclp_send_mask(sccb) & EVTYP_OPCMD_MASK))
  return 0;
 if (!(sccb_get_sclp_recv_mask(sccb) & (EVTYP_MSG_MASK | EVTYP_PMSGCMD_MASK)))
  return 0;
 return 1;
}
