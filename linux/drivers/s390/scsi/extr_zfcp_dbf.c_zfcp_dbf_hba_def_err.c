
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct zfcp_dbf_pay {int counter; int data; int fsf_req_id; int area; } ;
struct zfcp_dbf {int pay_lock; int pay; struct zfcp_dbf_pay pay_buf; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; } ;
struct qdio_buffer {int dummy; } ;


 scalar_t__ ZFCP_DBF_PAY_MAX_REC ;
 int debug_event (int ,int const,struct zfcp_dbf_pay*,int ) ;
 int debug_level_enabled (int ,int const) ;
 int memcpy (int ,char*,int) ;
 int memset (struct zfcp_dbf_pay*,int ,int) ;
 int min (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int zfcp_dbf_plen (int) ;

void zfcp_dbf_hba_def_err(struct zfcp_adapter *adapter, u64 req_id, u16 scount,
     void **pl)
{
 struct zfcp_dbf *dbf = adapter->dbf;
 struct zfcp_dbf_pay *payload = &dbf->pay_buf;
 unsigned long flags;
 static int const level = 1;
 u16 length;

 if (unlikely(!debug_level_enabled(dbf->pay, level)))
  return;

 if (!pl)
  return;

 spin_lock_irqsave(&dbf->pay_lock, flags);
 memset(payload, 0, sizeof(*payload));

 memcpy(payload->area, "def_err", 7);
 payload->fsf_req_id = req_id;
 payload->counter = 0;
 length = min((u16)sizeof(struct qdio_buffer),
       (u16)ZFCP_DBF_PAY_MAX_REC);

 while (payload->counter < scount && (char *)pl[payload->counter]) {
  memcpy(payload->data, (char *)pl[payload->counter], length);
  debug_event(dbf->pay, level, payload, zfcp_dbf_plen(length));
  payload->counter++;
 }

 spin_unlock_irqrestore(&dbf->pay_lock, flags);
}
