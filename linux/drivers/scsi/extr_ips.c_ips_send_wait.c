
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int callback; int * cdb; } ;
typedef TYPE_1__ ips_scb_t ;
struct TYPE_9__ {int cmd_in_progress; int waitflag; } ;
typedef TYPE_2__ ips_ha_t ;


 int IPS_FAILURE ;
 int IPS_FFDC ;
 int IPS_SUCCESS_IMM ;
 int METHOD_TRACE (char*,int) ;
 int TRUE ;
 int ips_send_cmd (TYPE_2__*,TYPE_1__*) ;
 int ips_wait (TYPE_2__*,int,int) ;
 int ipsintr_blocking ;

__attribute__((used)) static int
ips_send_wait(ips_ha_t * ha, ips_scb_t * scb, int timeout, int intr)
{
 int ret;

 METHOD_TRACE("ips_send_wait", 1);

 if (intr != IPS_FFDC) {
  ha->waitflag = TRUE;
  ha->cmd_in_progress = scb->cdb[0];
 }
 scb->callback = ipsintr_blocking;
 ret = ips_send_cmd(ha, scb);

 if ((ret == IPS_FAILURE) || (ret == IPS_SUCCESS_IMM))
  return (ret);

 if (intr != IPS_FFDC)
  ret = ips_wait(ha, timeout, intr);

 return (ret);
}
