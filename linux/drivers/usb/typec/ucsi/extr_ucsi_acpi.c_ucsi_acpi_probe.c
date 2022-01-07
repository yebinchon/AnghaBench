
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sync; int cmd; TYPE_2__* data; } ;
struct ucsi_acpi {int ucsi; TYPE_1__ ppm; int * dev; int guid; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
typedef int acpi_status ;
struct TYPE_4__ {int version; } ;


 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int *) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int UCSI_DSM_UUID ;
 int acpi_install_notify_handler (int ,int ,int ,struct ucsi_acpi*) ;
 int acpi_release_memory (int ,struct resource*,int) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int dev_err (int *,char*) ;
 TYPE_2__* devm_ioremap (int *,int ,int ) ;
 struct ucsi_acpi* devm_kzalloc (int *,int,int ) ;
 int guid_parse (int ,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ucsi_acpi*) ;
 int resource_size (struct resource*) ;
 int ucsi_acpi_cmd ;
 int ucsi_acpi_notify ;
 int ucsi_acpi_sync ;
 int ucsi_register_ppm (int *,TYPE_1__*) ;

__attribute__((used)) static int ucsi_acpi_probe(struct platform_device *pdev)
{
 struct ucsi_acpi *ua;
 struct resource *res;
 acpi_status status;
 int ret;

 ua = devm_kzalloc(&pdev->dev, sizeof(*ua), GFP_KERNEL);
 if (!ua)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "missing memory resource\n");
  return -ENODEV;
 }


 status = acpi_release_memory(ACPI_HANDLE(&pdev->dev), res, 1);
 if (ACPI_FAILURE(status))
  return -ENOMEM;







 ua->ppm.data = devm_ioremap(&pdev->dev, res->start, resource_size(res));
 if (!ua->ppm.data)
  return -ENOMEM;

 if (!ua->ppm.data->version)
  return -ENODEV;

 ret = guid_parse(UCSI_DSM_UUID, &ua->guid);
 if (ret)
  return ret;

 ua->ppm.cmd = ucsi_acpi_cmd;
 ua->ppm.sync = ucsi_acpi_sync;
 ua->dev = &pdev->dev;

 status = acpi_install_notify_handler(ACPI_HANDLE(&pdev->dev),
          ACPI_DEVICE_NOTIFY,
          ucsi_acpi_notify, ua);
 if (ACPI_FAILURE(status)) {
  dev_err(&pdev->dev, "failed to install notify handler\n");
  return -ENODEV;
 }

 ua->ucsi = ucsi_register_ppm(&pdev->dev, &ua->ppm);
 if (IS_ERR(ua->ucsi)) {
  acpi_remove_notify_handler(ACPI_HANDLE(&pdev->dev),
        ACPI_DEVICE_NOTIFY,
        ucsi_acpi_notify);
  return PTR_ERR(ua->ucsi);
 }

 platform_set_drvdata(pdev, ua);

 return 0;
}
