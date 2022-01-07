
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 int ft_format_wwn (char*,scalar_t__,int ) ;

__attribute__((used)) static ssize_t ft_wwn_show(void *arg, char *buf)
{
 u64 *wwn = arg;
 ssize_t len;

 len = ft_format_wwn(buf, PAGE_SIZE - 2, *wwn);
 buf[len++] = '\n';
 return len;
}
