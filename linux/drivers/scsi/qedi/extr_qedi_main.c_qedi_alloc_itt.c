
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_itt_map {int dummy; } ;
struct qedi_ctx {int dbg_ctx; int itt_map; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ISCSI_TASK_ENTRIES ;
 int QEDI_ERR (int *,char*) ;
 int kcalloc (int ,int,int ) ;

__attribute__((used)) static int qedi_alloc_itt(struct qedi_ctx *qedi)
{
 qedi->itt_map = kcalloc(MAX_ISCSI_TASK_ENTRIES,
    sizeof(struct qedi_itt_map), GFP_KERNEL);
 if (!qedi->itt_map) {
  QEDI_ERR(&qedi->dbg_ctx,
    "Unable to allocate itt map array memory\n");
  return -ENOMEM;
 }
 return 0;
}
