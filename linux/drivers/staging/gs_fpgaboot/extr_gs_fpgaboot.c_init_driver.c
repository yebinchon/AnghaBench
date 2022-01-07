
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTR_ERR_OR_ZERO (int ) ;
 int firmware_pdev ;
 int platform_device_register_simple (char*,int,int *,int ) ;

__attribute__((used)) static int init_driver(void)
{
 firmware_pdev = platform_device_register_simple("fpgaboot", -1,
       ((void*)0), 0);
 return PTR_ERR_OR_ZERO(firmware_pdev);
}
