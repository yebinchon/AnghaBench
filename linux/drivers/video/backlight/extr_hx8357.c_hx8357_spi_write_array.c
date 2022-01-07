
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lcd_device {int dummy; } ;


 int hx8357_spi_write_then_read (struct lcd_device*,int *,int ,int *,int ) ;

__attribute__((used)) static inline int hx8357_spi_write_array(struct lcd_device *lcdev,
     u8 *value, u8 len)
{
 return hx8357_spi_write_then_read(lcdev, value, len, ((void*)0), 0);
}
