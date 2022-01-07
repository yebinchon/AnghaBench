
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct device {int dummy; } ;
struct axis_fifo {scalar_t__ base_addr; } ;
typedef unsigned int ssize_t ;


 struct axis_fifo* dev_get_drvdata (struct device*) ;
 unsigned int ioread32 (scalar_t__) ;
 int memcpy (char*,char*,unsigned int) ;
 unsigned int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static ssize_t sysfs_read(struct device *dev, char *buf,
     unsigned int addr_offset)
{
 struct axis_fifo *fifo = dev_get_drvdata(dev);
 unsigned int read_val;
 unsigned int len;
 char tmp[32];

 read_val = ioread32(fifo->base_addr + addr_offset);
 len = snprintf(tmp, sizeof(tmp), "0x%x\n", read_val);
 memcpy(buf, tmp, len);

 return len;
}
