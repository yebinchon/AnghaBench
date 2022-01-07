
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,char const*) ;

__attribute__((used)) static bool uuid_not_set(const u8 *uuid, struct device *dev, const char *where)
{
 if (!uuid) {
  dev_dbg(dev, "%s: uuid not set\n", where);
  return 1;
 }
 return 0;
}
