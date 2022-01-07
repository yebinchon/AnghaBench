
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dispc_runtime_put () ;

__attribute__((used)) static int hdmi_runtime_suspend(struct device *dev)
{
 dispc_runtime_put();

 return 0;
}
