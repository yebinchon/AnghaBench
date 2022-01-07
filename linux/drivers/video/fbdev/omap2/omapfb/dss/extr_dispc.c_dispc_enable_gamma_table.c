
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPC_CONFIG ;
 int DSSWARN (char*) ;
 int REG_FLD_MOD (int ,int,int,int) ;

void dispc_enable_gamma_table(bool enable)
{




 if (enable) {
  DSSWARN("Gamma table enabling for TV not yet supported");
  return;
 }

 REG_FLD_MOD(DISPC_CONFIG, enable, 9, 9);
}
