
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SONY_PIC_FAN0_STATUS ;
 int ec_read (int ,int *) ;

__attribute__((used)) static int sony_pic_get_fanspeed(u8 *value)
{
 return ec_read(SONY_PIC_FAN0_STATUS, value);
}
