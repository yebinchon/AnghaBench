
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int data_lines; } ;
struct mipid_device {TYPE_1__ panel; int mutex; } ;


 int BUG () ;
 int MIPID_CMD_READ_BLUE ;
 int MIPID_CMD_READ_GREEN ;
 int MIPID_CMD_READ_RED ;
 int mipid_read (struct mipid_device*,int ,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u16 read_first_pixel(struct mipid_device *md)
{
 u16 pixel;
 u8 red, green, blue;

 mutex_lock(&md->mutex);
 mipid_read(md, MIPID_CMD_READ_RED, &red, 1);
 mipid_read(md, MIPID_CMD_READ_GREEN, &green, 1);
 mipid_read(md, MIPID_CMD_READ_BLUE, &blue, 1);
 mutex_unlock(&md->mutex);

 switch (md->panel.data_lines) {
 case 16:
  pixel = ((red >> 1) << 11) | (green << 5) | (blue >> 1);
  break;
 case 24:

  pixel = ((red >> 3) << 11) | ((green >> 2) << 5) |
   (blue >> 3);
  break;
 default:
  pixel = 0;
  BUG();
 }

 return pixel;
}
