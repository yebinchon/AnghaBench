
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fc_vport {void* port_name; void* node_name; scalar_t__ dd_data; int dev; struct Scsi_Host* shost; } ;
struct csio_lnode {struct fc_vport* fc_vport; } ;
struct csio_hw {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int CSIO_VALID_WWN (int *) ;
 int FC_VPORT_INITIALIZING ;
 int csio_fchost_attr_init (struct csio_lnode*) ;
 scalar_t__ csio_fcoe_alloc_vnp (struct csio_hw*,struct csio_lnode*) ;
 int csio_ln_err (struct csio_lnode*,char*) ;
 int csio_ln_wwnn (struct csio_lnode*) ;
 int csio_ln_wwpn (struct csio_lnode*) ;
 scalar_t__ csio_lnode_lookup_by_wwpn (struct csio_hw*,int *) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int csio_shost_exit (struct csio_lnode*) ;
 struct csio_lnode* csio_shost_init (struct csio_hw*,int *,int,struct csio_lnode*) ;
 int fc_vport_set_state (struct fc_vport*,int ) ;
 int memcpy (int ,int *,int) ;
 struct csio_lnode* shost_priv (struct Scsi_Host*) ;
 int u64_to_wwn (void*,int *) ;
 void* wwn_to_u64 (int ) ;

__attribute__((used)) static int
csio_vport_create(struct fc_vport *fc_vport, bool disable)
{
 struct Scsi_Host *shost = fc_vport->shost;
 struct csio_lnode *pln = shost_priv(shost);
 struct csio_lnode *ln = ((void*)0);
 struct csio_hw *hw = csio_lnode_to_hw(pln);
 uint8_t wwn[8];
 int ret = -1;

 ln = csio_shost_init(hw, &fc_vport->dev, 0, pln);
 if (!ln)
  goto error;

 if (fc_vport->node_name != 0) {
  u64_to_wwn(fc_vport->node_name, wwn);

  if (!CSIO_VALID_WWN(wwn)) {
   csio_ln_err(ln,
        "vport create failed. Invalid wwnn\n");
   goto error;
  }
  memcpy(csio_ln_wwnn(ln), wwn, 8);
 }

 if (fc_vport->port_name != 0) {
  u64_to_wwn(fc_vport->port_name, wwn);

  if (!CSIO_VALID_WWN(wwn)) {
   csio_ln_err(ln,
        "vport create failed. Invalid wwpn\n");
   goto error;
  }

  if (csio_lnode_lookup_by_wwpn(hw, wwn)) {
   csio_ln_err(ln,
       "vport create failed. wwpn already exists\n");
   goto error;
  }
  memcpy(csio_ln_wwpn(ln), wwn, 8);
 }

 fc_vport_set_state(fc_vport, FC_VPORT_INITIALIZING);
 ln->fc_vport = fc_vport;

 if (csio_fcoe_alloc_vnp(hw, ln))
  goto error;

 *(struct csio_lnode **)fc_vport->dd_data = ln;
 if (!fc_vport->node_name)
  fc_vport->node_name = wwn_to_u64(csio_ln_wwnn(ln));
 if (!fc_vport->port_name)
  fc_vport->port_name = wwn_to_u64(csio_ln_wwpn(ln));
 csio_fchost_attr_init(ln);
 return 0;
error:
 if (ln)
  csio_shost_exit(ln);

 return ret;
}
