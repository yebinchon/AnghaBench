
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ioctl_fn ;


 unsigned int ARRAY_SIZE (int **) ;
 unsigned int cmd_idx (unsigned int) ;

__attribute__((used)) static ioctl_fn lookup_dev_ioctl(unsigned int cmd)
{
 static ioctl_fn _ioctls[] = {
  128,
  133,
  134,
  135,
  139,
  132,
  137,
  130,
  140,
  129,
  131,
  138,
  141,
  136,
 };
 unsigned int idx = cmd_idx(cmd);

 return (idx >= ARRAY_SIZE(_ioctls)) ? ((void*)0) : _ioctls[idx];
}
