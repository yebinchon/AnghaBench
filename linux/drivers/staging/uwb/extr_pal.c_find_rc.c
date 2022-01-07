
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct uwb_rc {scalar_t__ ready; } const uwb_rc ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 struct uwb_rc const* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int find_rc(struct device *dev, const void *data)
{
 const struct uwb_rc *target_rc = data;
 struct uwb_rc *rc = dev_get_drvdata(dev);

 if (rc == ((void*)0)) {
  WARN_ON(1);
  return 0;
 }
 if (rc == target_rc) {
  if (rc->ready == 0)
   return 0;
  else
   return 1;
 }
 return 0;
}
