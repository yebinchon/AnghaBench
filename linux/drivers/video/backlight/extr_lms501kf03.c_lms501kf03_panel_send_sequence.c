
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lms501kf03 {int dummy; } ;


 int COMMAND_ONLY ;
 int DATA_ONLY ;
 int lms501kf03_spi_write (struct lms501kf03*,int ,unsigned char const) ;

__attribute__((used)) static int lms501kf03_panel_send_sequence(struct lms501kf03 *lcd,
     const unsigned char *wbuf,
     unsigned int len)
{
 int ret = 0, i = 0;

 while (i < len) {
  if (i == 0)
   ret = lms501kf03_spi_write(lcd, COMMAND_ONLY, wbuf[i]);
  else
   ret = lms501kf03_spi_write(lcd, DATA_ONLY, wbuf[i]);
  if (ret)
   break;
  i += 1;
 }

 return ret;
}
