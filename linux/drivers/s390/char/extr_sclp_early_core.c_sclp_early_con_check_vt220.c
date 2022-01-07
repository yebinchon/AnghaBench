
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct init_sccb {int dummy; } ;


 int EVTYP_VT220MSG_MASK ;
 int sccb_get_sclp_send_mask (struct init_sccb*) ;

unsigned int sclp_early_con_check_vt220(struct init_sccb *sccb)
{
 if (sccb_get_sclp_send_mask(sccb) & EVTYP_VT220MSG_MASK)
  return 1;
 return 0;
}
