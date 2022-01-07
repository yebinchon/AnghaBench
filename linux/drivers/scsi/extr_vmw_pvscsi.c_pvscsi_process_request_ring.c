
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {int dummy; } ;


 int PVSCSI_REG_OFFSET_KICK_NON_RW_IO ;
 int pvscsi_reg_write (struct pvscsi_adapter const*,int ,int ) ;

__attribute__((used)) static void pvscsi_process_request_ring(const struct pvscsi_adapter *adapter)
{
 pvscsi_reg_write(adapter, PVSCSI_REG_OFFSET_KICK_NON_RW_IO, 0);
}
