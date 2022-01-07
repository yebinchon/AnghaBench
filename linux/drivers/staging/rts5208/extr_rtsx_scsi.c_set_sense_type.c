
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int ASCQ_INVLD_CDB ;
 int ASC_INVLD_CDB ;
 int CDB_ILLEGAL ;
 int CUR_ERR ;
 int ILGAL_REQ ;
 int set_sense_data (struct rtsx_chip*,unsigned int,int ,int,int ,int,int,int ,int) ;

void set_sense_type(struct rtsx_chip *chip, unsigned int lun, int sense_type)
{
 switch (sense_type) {
 case 141:
  set_sense_data(chip, lun, CUR_ERR, 0x06, 0, 0x28, 0, 0, 0);
  break;

 case 137:
  set_sense_data(chip, lun, CUR_ERR, 0x02, 0, 0x3A, 0, 0, 0);
  break;

 case 139:
  set_sense_data(chip, lun, CUR_ERR, 0x05, 0, 0x21, 0, 0, 0);
  break;

 case 138:
  set_sense_data(chip, lun, CUR_ERR, 0x05, 0, 0x25, 0, 0, 0);
  break;

 case 133:
  set_sense_data(chip, lun, CUR_ERR, 0x07, 0, 0x27, 0, 0, 0);
  break;

 case 135:
  set_sense_data(chip, lun, CUR_ERR, 0x03, 0, 0x11, 0, 0, 0);
  break;

 case 134:
  set_sense_data(chip, lun, CUR_ERR, 0x03, 0, 0x0C, 0x02, 0, 0);
  break;

 case 140:
  set_sense_data(chip, lun, CUR_ERR, ILGAL_REQ, 0,
          ASC_INVLD_CDB, ASCQ_INVLD_CDB, CDB_ILLEGAL, 1);
  break;

 case 142:
  set_sense_data(chip, lun, CUR_ERR, 0x02, 0, 0x04, 0x04, 0, 0);
  break;

 case 143:
  set_sense_data(chip, lun, CUR_ERR, 0x03, 0, 0x31, 0x01, 0, 0);
  break;
 case 128:
 default:
  set_sense_data(chip, lun, CUR_ERR, 0, 0, 0, 0, 0, 0);
  break;
 }
}
