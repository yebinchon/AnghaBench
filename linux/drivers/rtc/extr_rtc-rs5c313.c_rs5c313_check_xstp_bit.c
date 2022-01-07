
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_mday; int tm_mon; int tm_year; } ;


 int RS5C313_CEDISABLE ;
 int RS5C313_CEENABLE ;
 int RS5C313_CNTREG_ADJ_BSY ;
 int RS5C313_CNTREG_WTEN_XSTP ;
 int RS5C313_MISCOP ;
 int memset (struct rtc_time*,int ,int) ;
 int ndelay (int) ;
 int pr_err (char*) ;
 int rs5c313_read_cntreg () ;
 int rs5c313_rtc_set_time (int *,struct rtc_time*) ;
 int rs5c313_write_cntreg (int) ;
 int rs5c313_write_intintvreg (int) ;

__attribute__((used)) static void rs5c313_check_xstp_bit(void)
{
 struct rtc_time tm;
 int cnt;

 RS5C313_CEENABLE;
 if (rs5c313_read_cntreg() & RS5C313_CNTREG_WTEN_XSTP) {

  rs5c313_write_intintvreg(0x00);

  rs5c313_write_cntreg(0x07);


  for (cnt = 0; cnt < 100; cnt++) {
   if (!(rs5c313_read_cntreg() & RS5C313_CNTREG_ADJ_BSY))
    break;
   RS5C313_MISCOP;
  }

  memset(&tm, 0, sizeof(struct rtc_time));
  tm.tm_mday = 1;
  tm.tm_mon = 1 - 1;
  tm.tm_year = 2000 - 1900;

  rs5c313_rtc_set_time(((void*)0), &tm);
  pr_err("invalid value, resetting to 1 Jan 2000\n");
 }
 RS5C313_CEDISABLE;
 ndelay(700);
}
