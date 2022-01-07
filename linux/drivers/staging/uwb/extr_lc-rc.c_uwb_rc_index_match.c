
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int const index; } ;
struct device {int dummy; } ;


 struct uwb_rc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int uwb_rc_index_match(struct device *dev, const void *data)
{
 const int *index = data;
 struct uwb_rc *rc = dev_get_drvdata(dev);

 if (rc->index == *index)
  return 1;
 return 0;
}
