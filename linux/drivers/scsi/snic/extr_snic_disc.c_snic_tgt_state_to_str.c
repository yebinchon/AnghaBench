
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNIC_TGT_STAT_DEL ;
 int SNIC_TGT_STAT_INIT ;
 char const** snic_tgt_state_str ;

const char *
snic_tgt_state_to_str(int state)
{
 return ((state >= SNIC_TGT_STAT_INIT && state <= SNIC_TGT_STAT_DEL) ?
  snic_tgt_state_str[state] : "UNKNOWN");
}
