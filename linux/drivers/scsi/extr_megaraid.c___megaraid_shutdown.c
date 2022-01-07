
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct mbox_out {int dummy; } ;
typedef int raw_mbox ;
struct TYPE_10__ {int m_out; } ;
typedef TYPE_3__ mbox_t ;
struct TYPE_11__ {TYPE_2__* dev; int pend_cmds; TYPE_1__* host; } ;
typedef TYPE_4__ adapter_t ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {int irq; } ;


 int FLUSH_ADAPTER ;
 int FLUSH_SYSTEM ;
 scalar_t__ atomic_read (int *) ;
 int dev_warn (int *,char*) ;
 int free_irq (int ,TYPE_4__*) ;
 int issue_scb_block (TYPE_4__*,int *) ;
 int mdelay (int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
__megaraid_shutdown(adapter_t *adapter)
{
 u_char raw_mbox[sizeof(struct mbox_out)];
 mbox_t *mbox = (mbox_t *)raw_mbox;
 int i;


 memset(&mbox->m_out, 0, sizeof(raw_mbox));
 raw_mbox[0] = FLUSH_ADAPTER;

 free_irq(adapter->host->irq, adapter);


 issue_scb_block(adapter, raw_mbox);


 memset(&mbox->m_out, 0, sizeof(raw_mbox));
 raw_mbox[0] = FLUSH_SYSTEM;


 issue_scb_block(adapter, raw_mbox);

 if (atomic_read(&adapter->pend_cmds) > 0)
  dev_warn(&adapter->dev->dev, "pending commands!!\n");





 for (i = 0; i <= 10; i++)
  mdelay(1000);
}
