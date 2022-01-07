
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct of_phandle_args {unsigned int* args; } ;



__attribute__((used)) static int hi3660_reset_xlate(struct reset_controller_dev *rcdev,
         const struct of_phandle_args *reset_spec)
{
 unsigned int offset, bit;

 offset = reset_spec->args[0];
 bit = reset_spec->args[1];

 return (offset << 8) | bit;
}
