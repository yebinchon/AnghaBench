
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_host_info {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct sdebug_host_info*) ;
 struct sdebug_host_info* to_sdebug_host (struct device*) ;

__attribute__((used)) static void sdebug_release_adapter(struct device *dev)
{
 struct sdebug_host_info *sdbg_host;

 sdbg_host = to_sdebug_host(dev);
 kfree(sdbg_host);
}
