
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int tearsync_line; int tearsync_mode; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 TYPE_2__ sossi ;

__attribute__((used)) static int sossi_enable_tearsync(int enable, unsigned line)
{
 int mode;

 dev_dbg(sossi.fbdev->dev, "tearsync %d line %d\n", enable, line);
 if (line >= 1 << 11)
  return -EINVAL;
 if (enable) {
  if (line)
   mode = 2;
  else
   mode = 3;
 } else
  mode = 0;
 sossi.tearsync_line = line;
 sossi.tearsync_mode = mode;

 return 0;
}
