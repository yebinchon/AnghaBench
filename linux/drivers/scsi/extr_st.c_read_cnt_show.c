
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_modedef {TYPE_2__* tape; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* stats; } ;
struct TYPE_3__ {int read_cnt; } ;


 scalar_t__ atomic64_read (int *) ;
 struct st_modedef* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,long long) ;

__attribute__((used)) static ssize_t read_cnt_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct st_modedef *STm = dev_get_drvdata(dev);

 return sprintf(buf, "%lld",
         (long long)atomic64_read(&STm->tape->stats->read_cnt));
}
