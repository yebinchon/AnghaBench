
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct MPT3SAS_ADAPTER {int dummy; } ;


 int MPT3_CMD_RESET ;
 int _debug_dump_mf (void*,int) ;
 int ioc_err (struct MPT3SAS_ADAPTER*,char*,char*) ;

u8
mpt3sas_base_check_cmd_timeout(struct MPT3SAS_ADAPTER *ioc,
  u8 status, void *mpi_request, int sz)
{
 u8 issue_reset = 0;

 if (!(status & MPT3_CMD_RESET))
  issue_reset = 1;

 ioc_err(ioc, "Command %s\n",
  issue_reset == 0 ? "terminated due to Host Reset" : "Timeout");
 _debug_dump_mf(mpi_request, sz);

 return issue_reset;
}
