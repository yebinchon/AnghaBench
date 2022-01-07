
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int data_lines; } ;
struct mipid_device {TYPE_1__ panel; } ;
typedef int initpar ;


 int mipid_write (struct mipid_device*,int,int *,int) ;
 int set_data_lines (struct mipid_device*,int ) ;

__attribute__((used)) static void send_init_string(struct mipid_device *md)
{
 u16 initpar[] = { 0x0102, 0x0100, 0x0100 };

 mipid_write(md, 0xc2, (u8 *)initpar, sizeof(initpar));
 set_data_lines(md, md->panel.data_lines);
}
