
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int put_queue (struct vc_data*,unsigned int) ;

__attribute__((used)) static int emulate_raw(struct vc_data *vc, unsigned int keycode, unsigned char up_flag)
{
 if (keycode > 127)
  return -1;

 put_queue(vc, keycode | up_flag);
 return 0;
}
