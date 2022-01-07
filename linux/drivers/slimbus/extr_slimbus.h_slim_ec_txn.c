
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ SLIM_MSG_MC_CHANGE_VALUE ;
 scalar_t__ SLIM_MSG_MC_REPORT_INFORMATION ;
 scalar_t__ SLIM_MSG_MC_REQUEST_INFORMATION ;
 scalar_t__ SLIM_MSG_MC_REQUEST_VALUE ;
 scalar_t__ SLIM_MSG_MT_CORE ;

__attribute__((used)) static inline bool slim_ec_txn(u8 mt, u8 mc)
{
 return (mt == SLIM_MSG_MT_CORE &&
  ((mc >= SLIM_MSG_MC_REQUEST_INFORMATION &&
    mc <= SLIM_MSG_MC_REPORT_INFORMATION) ||
   (mc >= SLIM_MSG_MC_REQUEST_VALUE &&
    mc <= SLIM_MSG_MC_CHANGE_VALUE)));
}
