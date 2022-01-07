
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int dummy; } ;


 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int sd_tuning_rx (struct rtsx_chip*) ;
 int sd_tuning_tx (struct rtsx_chip*) ;

__attribute__((used)) static int sd_sdr_tuning(struct rtsx_chip *chip)
{
 int retval;

 retval = sd_tuning_tx(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = sd_tuning_rx(chip);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 return STATUS_SUCCESS;
}
