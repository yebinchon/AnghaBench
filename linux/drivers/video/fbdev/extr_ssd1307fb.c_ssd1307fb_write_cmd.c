
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ssd1307fb_array {int * data; } ;
struct i2c_client {int dummy; } ;


 int ENOMEM ;
 int SSD1307FB_COMMAND ;
 int kfree (struct ssd1307fb_array*) ;
 struct ssd1307fb_array* ssd1307fb_alloc_array (int,int ) ;
 int ssd1307fb_write_array (struct i2c_client*,struct ssd1307fb_array*,int) ;

__attribute__((used)) static inline int ssd1307fb_write_cmd(struct i2c_client *client, u8 cmd)
{
 struct ssd1307fb_array *array;
 int ret;

 array = ssd1307fb_alloc_array(1, SSD1307FB_COMMAND);
 if (!array)
  return -ENOMEM;

 array->data[0] = cmd;

 ret = ssd1307fb_write_array(client, array, 1);
 kfree(array);

 return ret;
}
