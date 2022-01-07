
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,char const*,int,int,unsigned char const*) ;

__attribute__((used)) static inline void adu_debug_data(struct device *dev, const char *function,
      int size, const unsigned char *data)
{
 dev_dbg(dev, "%s - length = %d, data = %*ph\n",
  function, size, size, data);
}
