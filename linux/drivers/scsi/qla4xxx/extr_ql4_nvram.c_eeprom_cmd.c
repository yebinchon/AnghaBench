
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int isp_nvram (struct scsi_qla_host*) ;
 int readl (int ) ;
 int udelay (int) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void eeprom_cmd(uint32_t cmd, struct scsi_qla_host *ha)
{
 writel(cmd, isp_nvram(ha));
 readl(isp_nvram(ha));
 udelay(1);
}
