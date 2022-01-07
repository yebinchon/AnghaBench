
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct se_wwn {int dummy; } ;
struct vhost_scsi_tport {struct se_wwn tport_wwn; int * tport_name; int tport_proto_id; int tport_wwpn; } ;
struct target_fabric_configfs {int dummy; } ;
struct config_group {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct se_wwn* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int SCSI_PROTOCOL_FCP ;
 int SCSI_PROTOCOL_ISCSI ;
 int SCSI_PROTOCOL_SAS ;
 scalar_t__ VHOST_SCSI_NAMELEN ;
 int kfree (struct vhost_scsi_tport*) ;
 struct vhost_scsi_tport* kzalloc (int,int ) ;
 int pr_debug (char*,int ,char const*) ;
 int pr_err (char*,...) ;
 int snprintf (int *,scalar_t__,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* strstr (char const*,char*) ;
 int vhost_scsi_dump_proto_id (struct vhost_scsi_tport*) ;

__attribute__((used)) static struct se_wwn *
vhost_scsi_make_tport(struct target_fabric_configfs *tf,
       struct config_group *group,
       const char *name)
{
 struct vhost_scsi_tport *tport;
 char *ptr;
 u64 wwpn = 0;
 int off = 0;




 tport = kzalloc(sizeof(*tport), GFP_KERNEL);
 if (!tport) {
  pr_err("Unable to allocate struct vhost_scsi_tport");
  return ERR_PTR(-ENOMEM);
 }
 tport->tport_wwpn = wwpn;




 ptr = strstr(name, "naa.");
 if (ptr) {
  tport->tport_proto_id = SCSI_PROTOCOL_SAS;
  goto check_len;
 }
 ptr = strstr(name, "fc.");
 if (ptr) {
  tport->tport_proto_id = SCSI_PROTOCOL_FCP;
  off = 3;
  goto check_len;
 }
 ptr = strstr(name, "iqn.");
 if (ptr) {
  tport->tport_proto_id = SCSI_PROTOCOL_ISCSI;
  goto check_len;
 }

 pr_err("Unable to locate prefix for emulated Target Port:"
   " %s\n", name);
 kfree(tport);
 return ERR_PTR(-EINVAL);

check_len:
 if (strlen(name) >= VHOST_SCSI_NAMELEN) {
  pr_err("Emulated %s Address: %s, exceeds"
   " max: %d\n", name, vhost_scsi_dump_proto_id(tport),
   VHOST_SCSI_NAMELEN);
  kfree(tport);
  return ERR_PTR(-EINVAL);
 }
 snprintf(&tport->tport_name[0], VHOST_SCSI_NAMELEN, "%s", &name[off]);

 pr_debug("TCM_VHost_ConfigFS: Allocated emulated Target"
  " %s Address: %s\n", vhost_scsi_dump_proto_id(tport), name);

 return &tport->tport_wwn;
}
