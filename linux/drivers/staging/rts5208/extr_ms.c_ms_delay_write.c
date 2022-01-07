
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_delay_write_tag {int pageoff; int logblock; int new_phyblock; int old_phyblock; scalar_t__ delay_write_flag; } ;
struct ms_info {struct ms_delay_write_tag delay_write; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int ms_finish_write (struct rtsx_chip*,int ,int ,int ,int ) ;
 int ms_set_init_para (struct rtsx_chip*) ;

int ms_delay_write(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 struct ms_delay_write_tag *delay_write = &ms_card->delay_write;
 int retval;

 if (delay_write->delay_write_flag) {
  retval = ms_set_init_para(chip);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;

  delay_write->delay_write_flag = 0;
  retval = ms_finish_write(chip,
      delay_write->old_phyblock,
     delay_write->new_phyblock,
     delay_write->logblock,
     delay_write->pageoff);
  if (retval != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}
