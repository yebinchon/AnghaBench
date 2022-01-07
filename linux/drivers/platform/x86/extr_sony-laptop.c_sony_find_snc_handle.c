
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* cap; } ;


 int EINVAL ;
 int dprintk (char*,int,...) ;
 TYPE_1__* handles ;

__attribute__((used)) static int sony_find_snc_handle(int handle)
{
 int i;


 if (!handles || !handle)
  return -EINVAL;

 for (i = 0; i < 0x10; i++) {
  if (handles->cap[i] == handle) {
   dprintk("found handle 0x%.4x (offset: 0x%.2x)\n",
     handle, i);
   return i;
  }
 }
 dprintk("handle 0x%.4x not found\n", handle);
 return -EINVAL;
}
