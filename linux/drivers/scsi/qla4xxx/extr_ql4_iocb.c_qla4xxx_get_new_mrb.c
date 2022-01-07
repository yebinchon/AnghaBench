
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct mrb {struct scsi_qla_host* ha; } ;


 int GFP_KERNEL ;
 struct mrb* kzalloc (int,int ) ;

__attribute__((used)) static struct mrb *qla4xxx_get_new_mrb(struct scsi_qla_host *ha)
{
 struct mrb *mrb;

 mrb = kzalloc(sizeof(*mrb), GFP_KERNEL);
 if (!mrb)
  return mrb;

 mrb->ha = ha;
 return mrb;
}
