
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int dummy; } ;


 int MTOFFL ;
 int tape_mtop (struct tape_device*,int ,int) ;

int
tape_std_mtunload(struct tape_device *device, int mt_count)
{
 return tape_mtop(device, MTOFFL, mt_count);
}
