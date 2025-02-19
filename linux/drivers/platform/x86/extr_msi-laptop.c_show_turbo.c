
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MSI_STANDARD_EC_FUNCTIONS_ADDRESS ;
 int MSI_STANDARD_EC_TURBO_MASK ;
 int ec_read (int ,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_turbo(struct device *dev,
 struct device_attribute *attr, char *buf)
{

 u8 rdata;
 int result;

 result = ec_read(MSI_STANDARD_EC_FUNCTIONS_ADDRESS, &rdata);
 if (result < 0)
  return result;

 return sprintf(buf, "%i\n", !!(rdata & MSI_STANDARD_EC_TURBO_MASK));
}
