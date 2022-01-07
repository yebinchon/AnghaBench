
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int EIO ;
 int RV3029_STATUS ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int rv3029_write_regs (struct device*,int ,int *,int) ;

__attribute__((used)) static int rv3029_set_sr(struct device *dev, u8 val)
{
 u8 buf[1];
 int sr;

 buf[0] = val;
 sr = rv3029_write_regs(dev, RV3029_STATUS, buf, 1);
 dev_dbg(dev, "status = 0x%.2x (%d)\n", buf[0], buf[0]);
 if (sr < 0)
  return -EIO;
 return 0;
}
