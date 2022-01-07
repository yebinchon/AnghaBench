
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mps2_uart_port {int port; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mps2_uart_port* devm_kzalloc (int *,int,int ) ;
 int mps2_init_port (struct platform_device*,struct mps2_uart_port*) ;
 int mps2_of_get_port (struct platform_device*,struct mps2_uart_port*) ;
 int mps2_uart_driver ;
 int platform_set_drvdata (struct platform_device*,struct mps2_uart_port*) ;
 int uart_add_one_port (int *,int *) ;

__attribute__((used)) static int mps2_serial_probe(struct platform_device *pdev)
{
 struct mps2_uart_port *mps_port;
 int ret;

 mps_port = devm_kzalloc(&pdev->dev, sizeof(struct mps2_uart_port), GFP_KERNEL);

        if (!mps_port)
                return -ENOMEM;

 ret = mps2_of_get_port(pdev, mps_port);
 if (ret)
  return ret;

 ret = mps2_init_port(pdev, mps_port);
 if (ret)
  return ret;

 ret = uart_add_one_port(&mps2_uart_driver, &mps_port->port);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, mps_port);

 return 0;
}
