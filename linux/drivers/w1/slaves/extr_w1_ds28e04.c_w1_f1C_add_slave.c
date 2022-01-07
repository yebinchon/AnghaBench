
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {struct w1_f1C_data* family_data; } ;
struct w1_f1C_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct w1_f1C_data* kzalloc (int,int ) ;
 scalar_t__ w1_enable_crccheck ;

__attribute__((used)) static int w1_f1C_add_slave(struct w1_slave *sl)
{
 struct w1_f1C_data *data = ((void*)0);

 if (w1_enable_crccheck) {
  data = kzalloc(sizeof(struct w1_f1C_data), GFP_KERNEL);
  if (!data)
   return -ENOMEM;
  sl->family_data = data;
 }

 return 0;
}
