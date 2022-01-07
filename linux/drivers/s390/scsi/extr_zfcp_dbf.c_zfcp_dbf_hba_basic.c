
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_dbf_hba {int id; int tag; } ;
struct zfcp_dbf {int hba_lock; int hba; struct zfcp_dbf_hba hba_buf; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; } ;


 int ZFCP_DBF_HBA_BASIC ;
 int ZFCP_DBF_TAG_LEN ;
 int debug_event (int ,int const,struct zfcp_dbf_hba*,int) ;
 int debug_level_enabled (int ,int const) ;
 int memcpy (int ,char*,int ) ;
 int memset (struct zfcp_dbf_hba*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void zfcp_dbf_hba_basic(char *tag, struct zfcp_adapter *adapter)
{
 struct zfcp_dbf *dbf = adapter->dbf;
 struct zfcp_dbf_hba *rec = &dbf->hba_buf;
 static int const level = 1;
 unsigned long flags;

 if (unlikely(!debug_level_enabled(dbf->hba, level)))
  return;

 spin_lock_irqsave(&dbf->hba_lock, flags);
 memset(rec, 0, sizeof(*rec));

 memcpy(rec->tag, tag, ZFCP_DBF_TAG_LEN);
 rec->id = ZFCP_DBF_HBA_BASIC;

 debug_event(dbf->hba, level, rec, sizeof(*rec));
 spin_unlock_irqrestore(&dbf->hba_lock, flags);
}
