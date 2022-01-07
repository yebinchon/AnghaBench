
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ count; } ;
union acpi_object {scalar_t__ type; TYPE_2__ package; } ;
struct int3403_priv {TYPE_3__* adev; struct int3403_cdev* priv; TYPE_1__* pdev; } ;
struct int3403_cdev {int cdev; scalar_t__ max_state; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
struct TYPE_6__ {int handle; } ;
struct TYPE_4__ {int dev; } ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_device_bid (TYPE_3__*) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 struct int3403_cdev* devm_kzalloc (int *,int,int ) ;
 int int3403_cooling_ops ;
 int kfree (union acpi_object*) ;
 int pr_warn (char*) ;
 int thermal_cooling_device_register (int ,struct int3403_priv*,int *) ;

__attribute__((used)) static int int3403_cdev_add(struct int3403_priv *priv)
{
 int result = 0;
 acpi_status status;
 struct int3403_cdev *obj;
 struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *p;

 obj = devm_kzalloc(&priv->pdev->dev, sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return -ENOMEM;

 status = acpi_evaluate_object(priv->adev->handle, "PPSS", ((void*)0), &buf);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 p = buf.pointer;
 if (!p || (p->type != ACPI_TYPE_PACKAGE)) {
  pr_warn("Invalid PPSS data\n");
  kfree(buf.pointer);
  return -EFAULT;
 }

 priv->priv = obj;
 obj->max_state = p->package.count - 1;
 obj->cdev =
  thermal_cooling_device_register(acpi_device_bid(priv->adev),
    priv, &int3403_cooling_ops);
 if (IS_ERR(obj->cdev))
  result = PTR_ERR(obj->cdev);

 kfree(buf.pointer);


 return result;
}
