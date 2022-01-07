
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wdat_wdt {TYPE_1__* pdev; } ;
struct acpi_generic_address {int access_width; int address; } ;
struct TYPE_4__ {struct acpi_generic_address register_region; } ;
struct wdat_instruction {int reg; TYPE_2__ entry; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int dev_dbg (int *,char*,int ,int ) ;
 int ioread16 (int ) ;
 int ioread32 (int ) ;
 int ioread8 (int ) ;

__attribute__((used)) static int wdat_wdt_read(struct wdat_wdt *wdat,
  const struct wdat_instruction *instr, u32 *value)
{
 const struct acpi_generic_address *gas = &instr->entry.register_region;

 switch (gas->access_width) {
 case 1:
  *value = ioread8(instr->reg);
  break;
 case 2:
  *value = ioread16(instr->reg);
  break;
 case 3:
  *value = ioread32(instr->reg);
  break;
 default:
  return -EINVAL;
 }

 dev_dbg(&wdat->pdev->dev, "Read %#x from 0x%08llx\n", *value,
  gas->address);

 return 0;
}
