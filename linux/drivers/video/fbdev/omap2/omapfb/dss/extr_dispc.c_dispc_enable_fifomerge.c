
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPC_CONFIG ;
 int DSSDBG (char*,char*) ;
 int FEAT_FIFO_MERGE ;
 int REG_FLD_MOD (int ,int,int,int) ;
 int WARN_ON (int) ;
 int dss_has_feature (int ) ;

void dispc_enable_fifomerge(bool enable)
{
 if (!dss_has_feature(FEAT_FIFO_MERGE)) {
  WARN_ON(enable);
  return;
 }

 DSSDBG("FIFO merge %s\n", enable ? "enabled" : "disabled");
 REG_FLD_MOD(DISPC_CONFIG, enable ? 1 : 0, 14, 14);
}
