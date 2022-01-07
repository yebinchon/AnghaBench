
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct sym_hcb {int dummy; } ;
struct TYPE_4__ {scalar_t__ lastp; } ;
struct TYPE_6__ {TYPE_2__* data; TYPE_1__ head; } ;
struct sym_ccb {int xerr_status; scalar_t__ goalp; scalar_t__ startp; int data_len; int odd_byte_adjustment; int host_flags; int ext_ofs; int ext_sg; TYPE_3__ phys; scalar_t__ extra_bytes; } ;
struct TYPE_5__ {scalar_t__ size; } ;


 int HF_SENSE ;
 int SYM_CONF_MAX_SG ;
 int XE_EXTRA_DATA ;
 int XE_SODL_UNRUN ;
 int XE_SWIDE_OVRUN ;
 int scr_to_cpu (scalar_t__) ;
 scalar_t__ sym_evaluate_dp (struct sym_hcb*,struct sym_ccb*,int,int*) ;

int sym_compute_residual(struct sym_hcb *np, struct sym_ccb *cp)
{
 int dp_sg, resid = 0;
 int dp_ofs = 0;
 if (cp->xerr_status & (XE_EXTRA_DATA|XE_SODL_UNRUN|XE_SWIDE_OVRUN)) {
  if (cp->xerr_status & XE_EXTRA_DATA)
   resid -= cp->extra_bytes;
  if (cp->xerr_status & XE_SODL_UNRUN)
   ++resid;
  if (cp->xerr_status & XE_SWIDE_OVRUN)
   --resid;
 }





 if (cp->phys.head.lastp == cp->goalp)
  return resid;





 if (cp->startp == cp->phys.head.lastp ||
     sym_evaluate_dp(np, cp, scr_to_cpu(cp->phys.head.lastp),
       &dp_ofs) < 0) {
  return cp->data_len - cp->odd_byte_adjustment;
 }




 if (cp->host_flags & HF_SENSE) {
  return -dp_ofs;
 }





 resid = -cp->ext_ofs;
 for (dp_sg = cp->ext_sg; dp_sg < SYM_CONF_MAX_SG; ++dp_sg) {
  u_int tmp = scr_to_cpu(cp->phys.data[dp_sg].size);
  resid += (tmp & 0xffffff);
 }

 resid -= cp->odd_byte_adjustment;




 return resid;
}
