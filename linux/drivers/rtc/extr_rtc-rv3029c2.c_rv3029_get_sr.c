
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int EIO ;
 int RV3029_STATUS ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int rv3029_read_regs (struct device*,int ,int *,int) ;

__attribute__((used)) static int rv3029_get_sr(struct device *dev, u8 *buf)
{
 int ret = rv3029_read_regs(dev, RV3029_STATUS, buf, 1);

 if (ret < 0)
  return -EIO;
 dev_dbg(dev, "status = 0x%.2x (%d)\n", buf[0], buf[0]);
 return 0;
}
