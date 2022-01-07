
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_device {int dev; } ;


 int MFIE_TYPE_GENERIC ;
 int netdev_alert (int ,char*) ;

__attribute__((used)) static void rtllib_TURBO_Info(struct rtllib_device *ieee, u8 **tag_p)
{
 u8 *tag = *tag_p;

 *tag++ = MFIE_TYPE_GENERIC;
 *tag++ = 7;
 *tag++ = 0x00;
 *tag++ = 0xe0;
 *tag++ = 0x4c;
 *tag++ = 0x01;
 *tag++ = 0x02;
 *tag++ = 0x11;
 *tag++ = 0x00;

 *tag_p = tag;
 netdev_alert(ieee->dev, "This is enable turbo mode IE process\n");
}
