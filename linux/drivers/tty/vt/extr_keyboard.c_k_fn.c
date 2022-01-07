
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* func_table ;
 int pr_err (char*,unsigned char) ;
 int puts_queue (struct vc_data*,scalar_t__) ;

__attribute__((used)) static void k_fn(struct vc_data *vc, unsigned char value, char up_flag)
{
 if (up_flag)
  return;

 if ((unsigned)value < ARRAY_SIZE(func_table)) {
  if (func_table[value])
   puts_queue(vc, func_table[value]);
 } else
  pr_err("k_fn called with value=%d\n", value);
}
