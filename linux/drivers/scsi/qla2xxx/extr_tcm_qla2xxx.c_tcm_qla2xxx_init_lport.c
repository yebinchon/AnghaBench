
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcm_qla2xxx_lport {int lport_fcport_map; int lport_loopid_map; } ;
struct tcm_qla2xxx_fc_loopid {int dummy; } ;


 int ENOMEM ;
 int array_size (int,int) ;
 int btree_destroy32 (int *) ;
 int btree_init32 (int *) ;
 int pr_debug (char*,int) ;
 int pr_err (char*,...) ;
 int vzalloc (int ) ;

__attribute__((used)) static int tcm_qla2xxx_init_lport(struct tcm_qla2xxx_lport *lport)
{
 int rc;

 rc = btree_init32(&lport->lport_fcport_map);
 if (rc) {
  pr_err("Unable to initialize lport->lport_fcport_map btree\n");
  return rc;
 }

 lport->lport_loopid_map =
  vzalloc(array_size(65536,
       sizeof(struct tcm_qla2xxx_fc_loopid)));
 if (!lport->lport_loopid_map) {
  pr_err("Unable to allocate lport->lport_loopid_map of %zu bytes\n",
      sizeof(struct tcm_qla2xxx_fc_loopid) * 65536);
  btree_destroy32(&lport->lport_fcport_map);
  return -ENOMEM;
 }
 pr_debug("qla2xxx: Allocated lport_loopid_map of %zu bytes\n",
        sizeof(struct tcm_qla2xxx_fc_loopid) * 65536);
 return 0;
}
