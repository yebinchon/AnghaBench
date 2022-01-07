
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int max_rec; } ;


 int min (int,int) ;

__attribute__((used)) static inline int device_max_receive(struct fw_device *fw_device)
{

 return min(2 << fw_device->max_rec, 4096);
}
