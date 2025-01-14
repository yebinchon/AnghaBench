
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {scalar_t__ ss_en; } ;


 int RTSX_STAT_RUN ;
 scalar_t__ RTSX_STAT_SS ;
 int TRANSPORT_GOOD ;
 int rtsx_disable_aspm (struct rtsx_chip*) ;
 int rtsx_exit_ss (struct rtsx_chip*) ;
 scalar_t__ rtsx_get_stat (struct rtsx_chip*) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 int toggle_gpio (struct rtsx_chip*,int) ;
 int wait_timeout (int) ;

__attribute__((used)) static int toggle_gpio_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 u8 gpio = srb->cmnd[2];

 rtsx_disable_aspm(chip);

 if (chip->ss_en && (rtsx_get_stat(chip) == RTSX_STAT_SS)) {
  rtsx_exit_ss(chip);
  wait_timeout(100);
 }
 rtsx_set_stat(chip, RTSX_STAT_RUN);

 if (gpio > 3)
  gpio = 1;
 toggle_gpio(chip, gpio);

 return TRANSPORT_GOOD;
}
