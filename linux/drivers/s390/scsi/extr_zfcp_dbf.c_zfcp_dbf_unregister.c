
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_dbf {int rec; int pay; int hba; int san; int scsi; } ;


 int debug_unregister (int ) ;
 int kfree (struct zfcp_dbf*) ;

__attribute__((used)) static void zfcp_dbf_unregister(struct zfcp_dbf *dbf)
{
 if (!dbf)
  return;

 debug_unregister(dbf->scsi);
 debug_unregister(dbf->san);
 debug_unregister(dbf->hba);
 debug_unregister(dbf->pay);
 debug_unregister(dbf->rec);
 kfree(dbf);
}
