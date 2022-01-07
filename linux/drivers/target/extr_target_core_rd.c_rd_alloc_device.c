
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_hba {struct rd_host* hba_ptr; } ;
struct se_device {int dummy; } ;
struct rd_host {int dummy; } ;
struct rd_dev {struct se_device dev; struct rd_host* rd_host; } ;


 int GFP_KERNEL ;
 struct rd_dev* kzalloc (int,int ) ;

__attribute__((used)) static struct se_device *rd_alloc_device(struct se_hba *hba, const char *name)
{
 struct rd_dev *rd_dev;
 struct rd_host *rd_host = hba->hba_ptr;

 rd_dev = kzalloc(sizeof(*rd_dev), GFP_KERNEL);
 if (!rd_dev)
  return ((void*)0);

 rd_dev->rd_host = rd_host;

 return &rd_dev->dev;
}
