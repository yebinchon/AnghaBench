
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lms501kf03 {int dummy; } ;


 int lms501kf03_spi_write_byte (struct lms501kf03*,unsigned char,unsigned char) ;

__attribute__((used)) static int lms501kf03_spi_write(struct lms501kf03 *lcd, unsigned char address,
    unsigned char command)
{
 return lms501kf03_spi_write_byte(lcd, address, command);
}
