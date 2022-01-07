
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSI_STANDARD_EC_3G_MASK ;
 int MSI_STANDARD_EC_DEVICES_EXISTS_ADDRESS ;
 int ec_read (int ,int*) ;
 int threeg_exists ;

__attribute__((used)) static int get_threeg_exists(void)
{
 u8 rdata;
 int result;

 result = ec_read(MSI_STANDARD_EC_DEVICES_EXISTS_ADDRESS, &rdata);
 if (result < 0)
  return result;

 threeg_exists = !!(rdata & MSI_STANDARD_EC_3G_MASK);

 return 0;
}
