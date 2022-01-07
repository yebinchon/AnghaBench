
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ssd1307fb_array {int type; } ;


 int GFP_KERNEL ;
 struct ssd1307fb_array* kzalloc (scalar_t__,int ) ;

__attribute__((used)) static struct ssd1307fb_array *ssd1307fb_alloc_array(u32 len, u8 type)
{
 struct ssd1307fb_array *array;

 array = kzalloc(sizeof(struct ssd1307fb_array) + len, GFP_KERNEL);
 if (!array)
  return ((void*)0);

 array->type = type;

 return array;
}
