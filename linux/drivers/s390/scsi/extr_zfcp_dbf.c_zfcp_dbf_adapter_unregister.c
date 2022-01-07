
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_dbf {int dummy; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; } ;


 int zfcp_dbf_unregister (struct zfcp_dbf*) ;

void zfcp_dbf_adapter_unregister(struct zfcp_adapter *adapter)
{
 struct zfcp_dbf *dbf = adapter->dbf;

 adapter->dbf = ((void*)0);
 zfcp_dbf_unregister(dbf);
}
