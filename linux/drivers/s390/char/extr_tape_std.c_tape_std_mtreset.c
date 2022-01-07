
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ block_size; } ;
struct tape_device {TYPE_1__ char_data; } ;


 int DBF_EVENT (int,char*) ;

int
tape_std_mtreset(struct tape_device *device, int count)
{
 DBF_EVENT(6, "TCHAR:devreset:\n");
 device->char_data.block_size = 0;
 return 0;
}
