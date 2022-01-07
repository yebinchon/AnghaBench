
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct rtsx_chip {int dummy; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 int SCSI_LUN (struct scsi_cmnd*) ;
 int SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR ;
 int SENSE_TYPE_MEDIA_WRITE_ERR ;
 int set_sense_type (struct rtsx_chip*,int ,int ) ;

__attribute__((used)) static inline void ms_rw_fail(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 if (srb->sc_data_direction == DMA_FROM_DEVICE)
  set_sense_type(chip, SCSI_LUN(srb),
          SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
 else
  set_sense_type(chip, SCSI_LUN(srb), SENSE_TYPE_MEDIA_WRITE_ERR);
}
