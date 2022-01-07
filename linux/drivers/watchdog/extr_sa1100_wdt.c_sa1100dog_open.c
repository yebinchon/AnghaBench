
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int OIER ;
 int OIER_E3 ;
 int OSCR ;
 int OSMR3 ;
 int OSSR ;
 int OSSR_M3 ;
 int OWER ;
 int OWER_WME ;
 int pre_margin ;
 int readl_relaxed (int ) ;
 int sa1100wdt_users ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int,int *) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int sa1100dog_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(1, &sa1100wdt_users))
  return -EBUSY;


 writel_relaxed(readl_relaxed(OSCR) + pre_margin, OSMR3);
 writel_relaxed(OSSR_M3, OSSR);
 writel_relaxed(OWER_WME, OWER);
 writel_relaxed(readl_relaxed(OIER) | OIER_E3, OIER);
 return stream_open(inode, file);
}
