
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dispc_runtime_get () ;

__attribute__((used)) static int hdmi_runtime_resume(struct device *dev)
{
 int r;

 r = dispc_runtime_get();
 if (r < 0)
  return r;

 return 0;
}
