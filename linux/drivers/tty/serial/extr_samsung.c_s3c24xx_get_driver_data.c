
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s3c24xx_serial_drv_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ driver_data; } ;


 struct of_device_id* of_match_node (int ,scalar_t__) ;
 TYPE_2__* platform_get_device_id (struct platform_device*) ;
 int s3c24xx_uart_dt_match ;

__attribute__((used)) static inline struct s3c24xx_serial_drv_data *s3c24xx_get_driver_data(
   struct platform_device *pdev)
{







 return (struct s3c24xx_serial_drv_data *)
   platform_get_device_id(pdev)->driver_data;
}
