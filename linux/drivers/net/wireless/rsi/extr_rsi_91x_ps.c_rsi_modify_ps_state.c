
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_hw {int ps_state; } ;
typedef enum ps_state { ____Placeholder_ps_state } ps_state ;


 int INFO_ZONE ;
 int rsi_dbg (int ,char*,int ,int ) ;
 int str_psstate (int) ;

__attribute__((used)) static inline void rsi_modify_ps_state(struct rsi_hw *adapter,
           enum ps_state nstate)
{
 rsi_dbg(INFO_ZONE, "PS state changed %s => %s\n",
  str_psstate(adapter->ps_state),
  str_psstate(nstate));

 adapter->ps_state = nstate;
}
