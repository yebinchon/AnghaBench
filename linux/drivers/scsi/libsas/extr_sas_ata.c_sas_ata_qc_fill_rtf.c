
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fis; } ;
struct domain_device {TYPE_2__ sata_dev; } ;
struct ata_queued_cmd {int result_tf; TYPE_1__* ap; } ;
struct TYPE_3__ {struct domain_device* private_data; } ;


 int ata_tf_from_fis (int ,int *) ;

__attribute__((used)) static bool sas_ata_qc_fill_rtf(struct ata_queued_cmd *qc)
{
 struct domain_device *dev = qc->ap->private_data;

 ata_tf_from_fis(dev->sata_dev.fis, &qc->result_tf);
 return 1;
}
