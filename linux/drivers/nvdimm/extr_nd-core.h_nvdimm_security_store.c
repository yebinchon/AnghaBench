
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline ssize_t nvdimm_security_store(struct device *dev,
  const char *buf, size_t len)
{
 return -EOPNOTSUPP;
}
