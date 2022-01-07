
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_child_t {int dummy; } ;
struct device_node {int dummy; } ;


 int envctrl_set_mon (struct i2c_child_t*,char const*,int ) ;
 void* of_get_property (struct device_node*,char*,int*) ;
 unsigned int shutdown_temperature ;
 int strlen (char const*) ;
 unsigned int warning_temperature ;

__attribute__((used)) static void envctrl_init_adc(struct i2c_child_t *pchild, struct device_node *dp)
{
 int i = 0, len;
 const char *pos;
 const unsigned int *pval;


 pos = of_get_property(dp, "channels-description", &len);

 while (len > 0) {
  int l = strlen(pos) + 1;
  envctrl_set_mon(pchild, pos, i++);
  len -= l;
  pos += l;
 }


 pval = of_get_property(dp, "warning-temp", ((void*)0));
 if (pval)
  warning_temperature = *pval;

 pval = of_get_property(dp, "shutdown-temp", ((void*)0));
 if (pval)
  shutdown_temperature = *pval;
}
