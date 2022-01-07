
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1wm_data {int dummy; } ;


 int ds1wm_write (struct ds1wm_data*,int ) ;

__attribute__((used)) static void ds1wm_write_byte(void *data, u8 byte)
{
 struct ds1wm_data *ds1wm_data = data;

 ds1wm_write(ds1wm_data, byte);
}
