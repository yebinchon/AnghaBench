
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int FM93C66A_SIZE_16 ;
 int FM93C86A_SIZE_16 ;
 scalar_t__ is_qla4010 (struct scsi_qla_host*) ;

__attribute__((used)) static inline int eeprom_size(struct scsi_qla_host *ha)
{
 return is_qla4010(ha) ? FM93C66A_SIZE_16 : FM93C86A_SIZE_16;
}
