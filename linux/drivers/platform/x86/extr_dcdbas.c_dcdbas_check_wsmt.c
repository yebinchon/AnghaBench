
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct smm_eps_table {int num_of_4k_pages; scalar_t__ smm_comm_buff_addr; } ;
struct acpi_table_wsmt {int protection_flags; } ;
struct acpi_table_header {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ACPI_SIG_WSMT ;
 int ACPI_WSMT_COMM_BUFFER_NESTED_PTR_PROTECTION ;
 int ACPI_WSMT_FIXED_COMM_BUFFERS ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int MAX_SMI_DATA_BUF_SIZE ;
 int MEMREMAP_WB ;
 int PAGE_SIZE ;
 scalar_t__ __va (int) ;
 int acpi_get_table (int ,int ,struct acpi_table_header**) ;
 struct smm_eps_table* check_eps_table (int *) ;
 TYPE_1__* dcdbas_pdev ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ eps_buffer ;
 int max_smi_data_buf_size ;
 scalar_t__ memremap (scalar_t__,int,int ) ;
 scalar_t__ smi_data_buf ;
 scalar_t__ smi_data_buf_phys_addr ;
 int smi_data_buf_size ;
 scalar_t__ upper_32_bits (scalar_t__) ;
 int wsmt_enabled ;

__attribute__((used)) static int dcdbas_check_wsmt(void)
{
 struct acpi_table_wsmt *wsmt = ((void*)0);
 struct smm_eps_table *eps = ((void*)0);
 u64 remap_size;
 u8 *addr;

 acpi_get_table(ACPI_SIG_WSMT, 0, (struct acpi_table_header **)&wsmt);
 if (!wsmt)
  return 0;


 if (!(wsmt->protection_flags & ACPI_WSMT_FIXED_COMM_BUFFERS) ||
     !(wsmt->protection_flags & ACPI_WSMT_COMM_BUFFER_NESTED_PTR_PROTECTION))
  return 0;


 for (addr = (u8 *)__va(0xf0000);
      addr < (u8 *)__va(0x100000 - sizeof(struct smm_eps_table));
      addr += 16) {
  eps = check_eps_table(addr);
  if (eps)
   break;
 }

 if (!eps) {
  dev_dbg(&dcdbas_pdev->dev, "found WSMT, but no EPS found\n");
  return -ENODEV;
 }





 if (upper_32_bits(eps->smm_comm_buff_addr + 8)) {
  dev_warn(&dcdbas_pdev->dev, "found WSMT, but EPS buffer address is above 4GB\n");
  return -EINVAL;
 }




 remap_size = eps->num_of_4k_pages * PAGE_SIZE;
 if (remap_size > MAX_SMI_DATA_BUF_SIZE + 8)
  remap_size = MAX_SMI_DATA_BUF_SIZE + 8;
 eps_buffer = memremap(eps->smm_comm_buff_addr, remap_size, MEMREMAP_WB);
 if (!eps_buffer) {
  dev_warn(&dcdbas_pdev->dev, "found WSMT, but failed to map EPS buffer\n");
  return -ENOMEM;
 }


 smi_data_buf_phys_addr = eps->smm_comm_buff_addr + 8;
 smi_data_buf = eps_buffer + 8;
 smi_data_buf_size = remap_size - 8;
 max_smi_data_buf_size = smi_data_buf_size;
 wsmt_enabled = 1;
 dev_info(&dcdbas_pdev->dev,
   "WSMT found, using firmware-provided SMI buffer.\n");
 return 1;
}
