
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ci_hdrc {int dev; } ;


 int ETIMEDOUT ;
 int OTGSC_BSV ;
 int dev_err (int ,char*,int ) ;
 scalar_t__ hw_read_otgsc (struct ci_hdrc*,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int hw_wait_vbus_lower_bsv(struct ci_hdrc *ci)
{
 unsigned long elapse = jiffies + msecs_to_jiffies(5000);
 u32 mask = OTGSC_BSV;

 while (hw_read_otgsc(ci, mask)) {
  if (time_after(jiffies, elapse)) {
   dev_err(ci->dev, "timeout waiting for %08x in OTGSC\n",
     mask);
   return -ETIMEDOUT;
  }
  msleep(20);
 }

 return 0;
}
