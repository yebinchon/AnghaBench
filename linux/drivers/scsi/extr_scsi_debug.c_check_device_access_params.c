
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int DATA_PROTECT ;
 int ILLEGAL_REQUEST ;
 int INVALID_FIELD_IN_CDB ;
 int LBA_OUT_OF_RANGE ;
 int WRITE_PROTECTED ;
 int check_condition_result ;
 int mk_sense_buffer (struct scsi_cmnd*,int ,int ,int) ;
 unsigned long long sdebug_capacity ;
 unsigned int sdebug_store_sectors ;
 int sdebug_wp ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int check_device_access_params(struct scsi_cmnd *scp,
 unsigned long long lba, unsigned int num, bool write)
{
 if (lba + num > sdebug_capacity) {
  mk_sense_buffer(scp, ILLEGAL_REQUEST, LBA_OUT_OF_RANGE, 0);
  return check_condition_result;
 }

 if (num > sdebug_store_sectors) {

  mk_sense_buffer(scp, ILLEGAL_REQUEST, INVALID_FIELD_IN_CDB, 0);
  return check_condition_result;
 }
 if (write && unlikely(sdebug_wp)) {
  mk_sense_buffer(scp, DATA_PROTECT, WRITE_PROTECTED, 0x2);
  return check_condition_result;
 }
 return 0;
}
