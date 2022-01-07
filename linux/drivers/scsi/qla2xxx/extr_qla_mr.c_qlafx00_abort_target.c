
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int fc_port_t ;


 int TCF_TARGET_RESET ;
 int qla2x00_async_tm_cmd (int *,int ,int ,int) ;

int
qlafx00_abort_target(fc_port_t *fcport, uint64_t l, int tag)
{
 return qla2x00_async_tm_cmd(fcport, TCF_TARGET_RESET, l, tag);
}
