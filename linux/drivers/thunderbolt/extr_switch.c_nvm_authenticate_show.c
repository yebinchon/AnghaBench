
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_switch {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int nvm_get_auth_status (struct tb_switch*,int*) ;
 int sprintf (char*,char*,int) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static ssize_t nvm_authenticate_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct tb_switch *sw = tb_to_switch(dev);
 u32 status;

 nvm_get_auth_status(sw, &status);
 return sprintf(buf, "%#x\n", status);
}
