
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cw1200_common {int dummy; } ;


 int ST90TDS_CONTROL_REG_ID ;
 int cw1200_reg_read_16 (struct cw1200_common*,int ,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int cw1200_bh_read_ctrl_reg(struct cw1200_common *priv,
       u16 *ctrl_reg)
{
 int ret;

 ret = cw1200_reg_read_16(priv,
   ST90TDS_CONTROL_REG_ID, ctrl_reg);
 if (ret) {
  ret = cw1200_reg_read_16(priv,
    ST90TDS_CONTROL_REG_ID, ctrl_reg);
  if (ret)
   pr_err("[BH] Failed to read control register.\n");
 }

 return ret;
}
