
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ft_parse_wwn (char const*,int *,int ) ;

__attribute__((used)) static ssize_t ft_wwn_store(void *arg, const char *buf, size_t len)
{
 ssize_t ret;
 u64 wwn;

 ret = ft_parse_wwn(buf, &wwn, 0);
 if (ret > 0)
  *(u64 *)arg = wwn;
 return ret;
}
