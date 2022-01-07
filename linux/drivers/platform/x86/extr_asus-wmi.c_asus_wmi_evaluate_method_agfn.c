
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct acpi_buffer {int pointer; int length; } ;


 int ASUS_WMI_METHODID_AGFN ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int asus_wmi_evaluate_method (int ,int ,int ,int*) ;
 int kfree (int ) ;
 int kmemdup (int ,int ,int) ;
 int memcpy (int ,int ,int ) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static int asus_wmi_evaluate_method_agfn(const struct acpi_buffer args)
{
 struct acpi_buffer input;
 u64 phys_addr;
 u32 retval;
 u32 status = -1;





 input.pointer = kmemdup(args.pointer, args.length, GFP_DMA | GFP_KERNEL);
 input.length = args.length;
 if (!input.pointer)
  return -ENOMEM;
 phys_addr = virt_to_phys(input.pointer);

 status = asus_wmi_evaluate_method(ASUS_WMI_METHODID_AGFN,
     phys_addr, 0, &retval);
 if (!status)
  memcpy(args.pointer, input.pointer, args.length);

 kfree(input.pointer);
 if (status)
  return -ENXIO;

 return retval;
}
