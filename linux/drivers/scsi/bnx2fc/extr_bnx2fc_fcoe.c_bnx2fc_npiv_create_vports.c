
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwpn_str ;
typedef int wwnn_str ;
typedef size_t uint ;
typedef scalar_t__ u64 ;
struct fc_vport_identifiers {int disable; void* port_name; void* node_name; int symbolic_name; int vport_type; int roles; } ;
struct fc_lport {scalar_t__ wwnn; int host; } ;
struct cnic_fc_npiv_tbl {scalar_t__ count; int * wwpn; int * wwnn; } ;


 int BNX2FC_HBA_DBG (struct fc_lport*,char*,...) ;
 int FC_PORTTYPE_NPIV ;
 int FC_PORT_ROLE_FCP_INITIATOR ;
 scalar_t__ MAX_NPIV_ENTRIES ;
 scalar_t__ fc_vport_create (int ,int ,struct fc_vport_identifiers*) ;
 int fcoe_wwn_to_str (void*,char*,int) ;
 int scnprintf (int ,int,char*,size_t,void*,void*) ;
 void* wwn_to_u64 (int ) ;

__attribute__((used)) static uint bnx2fc_npiv_create_vports(struct fc_lport *lport,
          struct cnic_fc_npiv_tbl *npiv_tbl)
{
 struct fc_vport_identifiers vpid;
 uint i, created = 0;
 u64 wwnn = 0;
 char wwpn_str[32];
 char wwnn_str[32];

 if (npiv_tbl->count > MAX_NPIV_ENTRIES) {
  BNX2FC_HBA_DBG(lport, "Exceeded count max of npiv table\n");
  goto done;
 }


 if (wwn_to_u64(npiv_tbl->wwnn[0]) == 0 &&
     wwn_to_u64(npiv_tbl->wwpn[0]) == 0) {
  BNX2FC_HBA_DBG(lport, "First NPIV table entries invalid.\n");
  goto done;
 }

 vpid.roles = FC_PORT_ROLE_FCP_INITIATOR;
 vpid.vport_type = FC_PORTTYPE_NPIV;
 vpid.disable = 0;

 for (i = 0; i < npiv_tbl->count; i++) {
  wwnn = wwn_to_u64(npiv_tbl->wwnn[i]);
  if (wwnn == 0) {




   wwnn = lport->wwnn;
  }
  vpid.node_name = wwnn;
  vpid.port_name = wwn_to_u64(npiv_tbl->wwpn[i]);
  scnprintf(vpid.symbolic_name, sizeof(vpid.symbolic_name),
      "NPIV[%u]:%016llx-%016llx",
      created, vpid.port_name, vpid.node_name);
  fcoe_wwn_to_str(vpid.node_name, wwnn_str, sizeof(wwnn_str));
  fcoe_wwn_to_str(vpid.port_name, wwpn_str, sizeof(wwpn_str));
  BNX2FC_HBA_DBG(lport, "Creating vport %s:%s.\n", wwnn_str,
      wwpn_str);
  if (fc_vport_create(lport->host, 0, &vpid))
   created++;
  else
   BNX2FC_HBA_DBG(lport, "Failed to create vport\n");
 }
done:
 return created;
}
