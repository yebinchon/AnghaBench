
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BITS_PER_BYTE ;
 int IOSS_TELEM_EVENT_WRITE ;
 int IOSS_TELEM_EVT_WRITE_SIZE ;
 int PMC_IPC_PMC_TELEMTRY ;
 int TELEM_EVENT_ENABLE ;
 int intel_pmc_ipc_command (int ,int ,int *,int ,int *,int ) ;

__attribute__((used)) static inline int telemetry_plt_config_ioss_event(u32 evt_id, int index)
{
 u32 write_buf;
 int ret;

 write_buf = evt_id | TELEM_EVENT_ENABLE;
 write_buf <<= BITS_PER_BYTE;
 write_buf |= index;

 ret = intel_pmc_ipc_command(PMC_IPC_PMC_TELEMTRY,
        IOSS_TELEM_EVENT_WRITE, (u8 *)&write_buf,
        IOSS_TELEM_EVT_WRITE_SIZE, ((void*)0), 0);

 return ret;
}
