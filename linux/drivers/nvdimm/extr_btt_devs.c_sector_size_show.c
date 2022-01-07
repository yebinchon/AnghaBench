
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_btt {int lbasize; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int btt_lbasize_supported ;
 int nd_size_select_show (int ,int ,char*) ;
 struct nd_btt* to_nd_btt (struct device*) ;

__attribute__((used)) static ssize_t sector_size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_btt *nd_btt = to_nd_btt(dev);

 return nd_size_select_show(nd_btt->lbasize, btt_lbasize_supported, buf);
}
