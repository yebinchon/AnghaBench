
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct qla4_work_evt {int type; int list; } ;
typedef enum qla4_work_type { ____Placeholder_qla4_work_type } qla4_work_type ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct qla4_work_evt* kzalloc (scalar_t__,int ) ;

__attribute__((used)) static struct qla4_work_evt *
qla4xxx_alloc_work(struct scsi_qla_host *ha, uint32_t data_size,
     enum qla4_work_type type)
{
 struct qla4_work_evt *e;
 uint32_t size = sizeof(struct qla4_work_evt) + data_size;

 e = kzalloc(size, GFP_ATOMIC);
 if (!e)
  return ((void*)0);

 INIT_LIST_HEAD(&e->list);
 e->type = type;
 return e;
}
