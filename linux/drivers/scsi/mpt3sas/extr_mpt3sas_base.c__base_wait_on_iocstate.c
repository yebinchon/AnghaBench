
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct MPT3SAS_ADAPTER {int dummy; } ;


 int MPI2_IOC_STATE_FAULT ;
 int mpt3sas_base_get_iocstate (struct MPT3SAS_ADAPTER*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int
_base_wait_on_iocstate(struct MPT3SAS_ADAPTER *ioc, u32 ioc_state, int timeout)
{
 u32 count, cntdn;
 u32 current_state;

 count = 0;
 cntdn = 1000 * timeout;
 do {
  current_state = mpt3sas_base_get_iocstate(ioc, 1);
  if (current_state == ioc_state)
   return 0;
  if (count && current_state == MPI2_IOC_STATE_FAULT)
   break;

  usleep_range(1000, 1500);
  count++;
 } while (--cntdn);

 return current_state;
}
