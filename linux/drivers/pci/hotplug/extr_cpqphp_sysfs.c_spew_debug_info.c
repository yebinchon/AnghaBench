
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;


 int show_ctrl (struct controller*,char*) ;
 int show_dev (struct controller*,char*) ;

__attribute__((used)) static int spew_debug_info(struct controller *ctrl, char *data, int size)
{
 int used;

 used = size - show_ctrl(ctrl, data);
 used = (size - used) - show_dev(ctrl, &data[used]);
 return used;
}
