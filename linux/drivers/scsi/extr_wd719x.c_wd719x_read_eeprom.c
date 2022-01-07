
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wd719x_host_param {int dummy; } ;
struct wd719x_eeprom_header {char sig1; char sig2; int cfg_offset; } ;
struct wd719x {scalar_t__ type; TYPE_2__* params; TYPE_1__* pdev; } ;
struct eeprom_93cx6 {int width; int register_write; int register_read; struct wd719x* data; } ;
typedef int header ;
struct TYPE_4__ {int ch_1_th; int scsi_conf; int own_scsi_id; int sel_timeout; int sleep_timer; int scsi_pad; int soft_mask; int unsol_mask; void* tag_en; void* sync; void* wide; void* cdb_size; } ;
struct TYPE_3__ {int dev; } ;


 int PCI_EEPROM_WIDTH_93C46 ;
 int WD719X_EE_CLK ;
 int WD719X_EE_CS ;
 int WD719X_EE_DI ;
 int WD719X_EE_DO ;
 int WD719X_PCI_GPIO_CONTROL ;
 int WD719X_PCI_GPIO_DATA ;
 scalar_t__ WD719X_TYPE_7193 ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int dev_warn (int *,char*,char,char) ;
 int eeprom_93cx6_multireadb (struct eeprom_93cx6*,int ,int*,int) ;
 int wd719x_eeprom_reg_read ;
 int wd719x_eeprom_reg_write ;
 int wd719x_readb (struct wd719x*,int ) ;
 int wd719x_writeb (struct wd719x*,int ,int) ;

__attribute__((used)) static void wd719x_read_eeprom(struct wd719x *wd)
{
 struct eeprom_93cx6 eeprom;
 u8 gpio;
 struct wd719x_eeprom_header header;

 eeprom.data = wd;
 eeprom.register_read = wd719x_eeprom_reg_read;
 eeprom.register_write = wd719x_eeprom_reg_write;
 eeprom.width = PCI_EEPROM_WIDTH_93C46;


 wd719x_writeb(wd, WD719X_PCI_GPIO_DATA, 0);

 gpio = wd719x_readb(wd, WD719X_PCI_GPIO_CONTROL);

 gpio &= (~(WD719X_EE_CLK | WD719X_EE_DI | WD719X_EE_CS));

 gpio |= WD719X_EE_DO;
 wd719x_writeb(wd, WD719X_PCI_GPIO_CONTROL, gpio);


 eeprom_93cx6_multireadb(&eeprom, 0, (u8 *)&header, sizeof(header));

 if (header.sig1 == 'W' && header.sig2 == 'D')
  eeprom_93cx6_multireadb(&eeprom, header.cfg_offset,
     (u8 *)wd->params,
     sizeof(struct wd719x_host_param));
 else {
  dev_warn(&wd->pdev->dev, "EEPROM signature is invalid (0x%02x 0x%02x), using default values\n",
    header.sig1, header.sig2);
  wd->params->ch_1_th = 0x10;
  wd->params->scsi_conf = 0x4c;
  wd->params->own_scsi_id = 0x07;
  wd->params->sel_timeout = 0x4d;
  wd->params->sleep_timer = 0x01;
  wd->params->cdb_size = cpu_to_le16(0x5555);
  wd->params->scsi_pad = 0x1b;
  if (wd->type == WD719X_TYPE_7193)
   wd->params->wide = cpu_to_le32(0x00000000);
  else
   wd->params->wide = cpu_to_le32(0xffffffff);
  wd->params->sync = cpu_to_le32(0xffffffff);
  wd->params->soft_mask = 0x00;
  wd->params->unsol_mask = 0x00;
 }

 wd->params->tag_en = cpu_to_le16(0x0000);
}
