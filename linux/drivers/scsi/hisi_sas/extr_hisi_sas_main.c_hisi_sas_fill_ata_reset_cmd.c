
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_taskfile {int command; int ctl; } ;
struct ata_device {int dummy; } ;


 int ATA_CMD_DEV_RESET ;
 int ATA_SRST ;
 int ata_tf_init (struct ata_device*,struct ata_taskfile*) ;
 int ata_tf_to_fis (struct ata_taskfile*,int,int ,int *) ;

__attribute__((used)) static void hisi_sas_fill_ata_reset_cmd(struct ata_device *dev,
  bool reset, int pmp, u8 *fis)
{
 struct ata_taskfile tf;

 ata_tf_init(dev, &tf);
 if (reset)
  tf.ctl |= ATA_SRST;
 else
  tf.ctl &= ~ATA_SRST;
 tf.command = ATA_CMD_DEV_RESET;
 ata_tf_to_fis(&tf, pmp, 0, fis);
}
