
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {int dev; int self; int bridge; } ;
struct acpiphp_root_context {int hp; struct acpiphp_bridge* root_bridge; } ;
struct TYPE_2__ {int parent; } ;
struct acpiphp_context {TYPE_1__ func; struct acpiphp_bridge* bridge; } ;
struct acpiphp_bridge {int pci_dev; int list; struct acpiphp_context* context; struct pci_bus* pci_bus; int ref; int slots; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 struct acpi_device* ACPI_COMPANION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_DEVICE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_handle_err (int ,char*) ;
 int acpi_lock_hp_context () ;
 int acpi_set_hp_context (struct acpi_device*,int *) ;
 int acpi_unlock_hp_context () ;
 int acpi_walk_namespace (int ,int ,int,int ,int *,struct acpiphp_bridge*,int *) ;
 int acpiphp_add_context ;
 scalar_t__ acpiphp_disabled ;
 struct acpiphp_context* acpiphp_get_context (struct acpi_device*) ;
 int bridge_list ;
 int bridge_mutex ;
 int cleanup_bridge (struct acpiphp_bridge*) ;
 int get_bridge (int ) ;
 int get_device (int *) ;
 int kfree (struct acpiphp_bridge*) ;
 int kref_init (int *) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_dev_get (int ) ;
 int pci_dev_put (int ) ;
 scalar_t__ pci_is_root_bus (struct pci_bus*) ;
 int put_bridge (struct acpiphp_bridge*) ;
 int put_device (int *) ;

void acpiphp_enumerate_slots(struct pci_bus *bus)
{
 struct acpiphp_bridge *bridge;
 struct acpi_device *adev;
 acpi_handle handle;
 acpi_status status;

 if (acpiphp_disabled)
  return;

 adev = ACPI_COMPANION(bus->bridge);
 if (!adev)
  return;

 handle = adev->handle;
 bridge = kzalloc(sizeof(struct acpiphp_bridge), GFP_KERNEL);
 if (!bridge)
  return;

 INIT_LIST_HEAD(&bridge->slots);
 kref_init(&bridge->ref);
 bridge->pci_dev = pci_dev_get(bus->self);
 bridge->pci_bus = bus;






 get_device(&bus->dev);

 acpi_lock_hp_context();
 if (pci_is_root_bus(bridge->pci_bus)) {
  struct acpiphp_root_context *root_context;

  root_context = kzalloc(sizeof(*root_context), GFP_KERNEL);
  if (!root_context)
   goto err;

  root_context->root_bridge = bridge;
  acpi_set_hp_context(adev, &root_context->hp);
 } else {
  struct acpiphp_context *context;







  context = acpiphp_get_context(adev);
  if (!context)
   goto err;

  bridge->context = context;
  context->bridge = bridge;

  get_bridge(context->func.parent);
 }
 acpi_unlock_hp_context();


 mutex_lock(&bridge_mutex);
 list_add(&bridge->list, &bridge_list);
 mutex_unlock(&bridge_mutex);


 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, 1,
         acpiphp_add_context, ((void*)0), bridge, ((void*)0));
 if (ACPI_FAILURE(status)) {
  acpi_handle_err(handle, "failed to register slots\n");
  cleanup_bridge(bridge);
  put_bridge(bridge);
 }
 return;

 err:
 acpi_unlock_hp_context();
 put_device(&bus->dev);
 pci_dev_put(bridge->pci_dev);
 kfree(bridge);
}
