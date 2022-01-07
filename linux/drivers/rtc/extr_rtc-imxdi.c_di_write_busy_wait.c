
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imxdi_dev {unsigned int ioaddr; } ;


 int usleep_range (int,int) ;
 int writel (int ,unsigned int) ;

__attribute__((used)) static void di_write_busy_wait(const struct imxdi_dev *imxdi, u32 val,
          unsigned reg)
{

 writel(val, imxdi->ioaddr + reg);





 usleep_range(130, 200);
}
