
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct scsi_cmnd {int dummy; } ;
struct ms_info {int dummy; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 scalar_t__ CHK_MSPRO (struct ms_info*) ;
 int ms_rw_multi_sector (struct scsi_cmnd*,struct rtsx_chip*,int ,int ) ;
 int mspro_rw_multi_sector (struct scsi_cmnd*,struct rtsx_chip*,int ,int ) ;

int ms_rw(struct scsi_cmnd *srb, struct rtsx_chip *chip,
   u32 start_sector, u16 sector_cnt)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval;

 if (CHK_MSPRO(ms_card))
  retval = mspro_rw_multi_sector(srb, chip, start_sector,
            sector_cnt);
 else
  retval = ms_rw_multi_sector(srb, chip, start_sector,
         sector_cnt);

 return retval;
}
