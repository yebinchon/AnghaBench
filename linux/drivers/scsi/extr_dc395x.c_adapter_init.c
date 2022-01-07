
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ScsiReqBlk {int dummy; } ;
struct DeviceCtlBlk {int dummy; } ;
struct AdapterCtlBlk {unsigned long io_port_base; unsigned int irq_level; int io_port_len; int srb_array; int dcb_map; int scsi_host; int eeprom; } ;


 int DBG_0 ;
 int DC395X_NAME ;
 int IRQF_SHARED ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int KERN_INFO ;
 int adapter_init_chip (struct AdapterCtlBlk*) ;
 int adapter_init_params (struct AdapterCtlBlk*) ;
 int adapter_init_scsi_host (int ) ;
 int adapter_print_config (struct AdapterCtlBlk*) ;
 scalar_t__ adapter_sg_tables_alloc (struct AdapterCtlBlk*) ;
 int adapter_sg_tables_free (struct AdapterCtlBlk*) ;
 int check_eeprom (int *,unsigned long) ;
 int dc395x_interrupt ;
 int dprintkdbg (int ,char*,struct AdapterCtlBlk*,int ,int ,int,int,int) ;
 int dprintkl (int ,char*,...) ;
 int free_irq (int,struct AdapterCtlBlk*) ;
 int print_eeprom_settings (int *) ;
 int release_region (long,int ) ;
 scalar_t__ request_irq (unsigned int,int ,int ,int ,struct AdapterCtlBlk*) ;
 int request_region (unsigned long,int ,int ) ;
 int set_basic_config (struct AdapterCtlBlk*) ;

__attribute__((used)) static int adapter_init(struct AdapterCtlBlk *acb, unsigned long io_port,
   u32 io_port_len, unsigned int irq)
{
 if (!request_region(io_port, io_port_len, DC395X_NAME)) {
  dprintkl(KERN_ERR, "Failed to reserve IO region 0x%lx\n", io_port);
  goto failed;
 }

 acb->io_port_base = io_port;
 acb->io_port_len = io_port_len;

 if (request_irq(irq, dc395x_interrupt, IRQF_SHARED, DC395X_NAME, acb)) {

  dprintkl(KERN_INFO, "Failed to register IRQ\n");
  goto failed;
 }

 acb->irq_level = irq;


 check_eeprom(&acb->eeprom, io_port);
  print_eeprom_settings(&acb->eeprom);


 adapter_init_params(acb);


  adapter_print_config(acb);

 if (adapter_sg_tables_alloc(acb)) {
  dprintkl(KERN_DEBUG, "Memory allocation for SG tables failed\n");
  goto failed;
 }
 adapter_init_scsi_host(acb->scsi_host);
 adapter_init_chip(acb);
 set_basic_config(acb);

 dprintkdbg(DBG_0,
  "adapter_init: acb=%p, pdcb_map=%p psrb_array=%p "
  "size{acb=0x%04x dcb=0x%04x srb=0x%04x}\n",
  acb, acb->dcb_map, acb->srb_array, sizeof(struct AdapterCtlBlk),
  sizeof(struct DeviceCtlBlk), sizeof(struct ScsiReqBlk));
 return 0;

failed:
 if (acb->irq_level)
  free_irq(acb->irq_level, acb);
 if (acb->io_port_base)
  release_region(acb->io_port_base, acb->io_port_len);
 adapter_sg_tables_free(acb);

 return 1;
}
