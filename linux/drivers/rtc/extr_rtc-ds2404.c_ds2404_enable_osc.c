
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int ds2404_write_memory (struct device*,int,int,int*) ;

__attribute__((used)) static void ds2404_enable_osc(struct device *dev)
{
 u8 in[1] = { 0x10 };
 ds2404_write_memory(dev, 0x201, 1, in);
}
