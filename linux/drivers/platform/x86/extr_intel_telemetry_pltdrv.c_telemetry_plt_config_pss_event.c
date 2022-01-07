
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPC_PUNIT_BIOS_WRITE_TELE_EVENT ;
 int TELEM_EVENT_ENABLE ;
 int intel_punit_ipc_command (int ,int,int ,int*,int *) ;

__attribute__((used)) static inline int telemetry_plt_config_pss_event(u32 evt_id, int index)
{
 u32 write_buf;
 int ret;

 write_buf = evt_id | TELEM_EVENT_ENABLE;
 ret = intel_punit_ipc_command(IPC_PUNIT_BIOS_WRITE_TELE_EVENT,
          index, 0, &write_buf, ((void*)0));

 return ret;
}
