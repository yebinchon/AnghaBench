
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct ci_hdrc {int dummy; } ;


 int GENMASK (int,int) ;
 int OP_ULPI_VIEWPORT ;
 int ULPI_ADDR (int ) ;
 int ULPI_RUN ;
 int ULPI_WAKEUP ;
 int ULPI_WRITE ;
 int ci_ulpi_wait (struct ci_hdrc*,int) ;
 struct ci_hdrc* dev_get_drvdata (struct device*) ;
 int hw_read (struct ci_hdrc*,int ,int ) ;
 int hw_write (struct ci_hdrc*,int ,int,int) ;

__attribute__((used)) static int ci_ulpi_read(struct device *dev, u8 addr)
{
 struct ci_hdrc *ci = dev_get_drvdata(dev);
 int ret;

 hw_write(ci, OP_ULPI_VIEWPORT, 0xffffffff, ULPI_WRITE | ULPI_WAKEUP);
 ret = ci_ulpi_wait(ci, ULPI_WAKEUP);
 if (ret)
  return ret;

 hw_write(ci, OP_ULPI_VIEWPORT, 0xffffffff, ULPI_RUN | ULPI_ADDR(addr));
 ret = ci_ulpi_wait(ci, ULPI_RUN);
 if (ret)
  return ret;

 return hw_read(ci, OP_ULPI_VIEWPORT, GENMASK(15, 8)) >> 8;
}
