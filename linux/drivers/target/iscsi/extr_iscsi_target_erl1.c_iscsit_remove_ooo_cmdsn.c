
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_ooo_cmdsn {int ooo_list; } ;


 int kmem_cache_free (int ,struct iscsi_ooo_cmdsn*) ;
 int lio_ooo_cache ;
 int list_del (int *) ;

void iscsit_remove_ooo_cmdsn(
 struct iscsi_session *sess,
 struct iscsi_ooo_cmdsn *ooo_cmdsn)
{
 list_del(&ooo_cmdsn->ooo_list);
 kmem_cache_free(lio_ooo_cache, ooo_cmdsn);
}
