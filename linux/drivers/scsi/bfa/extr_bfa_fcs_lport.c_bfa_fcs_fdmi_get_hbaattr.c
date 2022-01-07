
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {char* symname; } ;
struct TYPE_12__ {TYPE_3__ node_sym_name; } ;
struct bfa_fcs_lport_s {TYPE_8__* fabric; TYPE_6__* fcs; TYPE_4__ port_cfg; } ;
struct bfa_fcs_lport_fdmi_s {TYPE_1__* ms; } ;
struct bfa_fcs_fdmi_port_attr_s {int max_frm_size; } ;
struct TYPE_10__ {int symname; } ;
struct bfa_fcs_fdmi_hba_attr_s {char* option_rom_ver; int bios_ver; int fabric_name; int num_ports; int vendor_info; TYPE_2__ node_sym_name; int max_ct_pyld; int os_name; int driver_version; int fw_version; int hw_version; int model_desc; int model; int serial_num; int manufacturer; } ;
struct bfa_fcs_driver_info_s {char* host_os_name; char* host_os_patch; scalar_t__ version; } ;
struct TYPE_16__ {TYPE_7__* lps; } ;
struct TYPE_15__ {int pr_nwwn; } ;
struct TYPE_14__ {TYPE_5__* bfa; struct bfa_fcs_driver_info_s driver_info; } ;
struct TYPE_13__ {int ioc; } ;
struct TYPE_9__ {struct bfa_fcs_lport_s* port; } ;


 char* BFA_FCS_PORT_SYMBNAME_SEPARATOR ;
 int BFA_SYMNAME_MAXLEN ;
 int BFA_VERSION_LEN ;
 int bfa_fcs_fdmi_get_portattr (struct bfa_fcs_lport_fdmi_s*,struct bfa_fcs_fdmi_port_attr_s*) ;
 int bfa_ioc_get_adapter_fw_ver (int *,int ) ;
 int bfa_ioc_get_adapter_manufacturer (int *,int ) ;
 int bfa_ioc_get_adapter_model (int *,int ) ;
 int bfa_ioc_get_adapter_optrom_ver (int *,char*) ;
 int bfa_ioc_get_adapter_serial_num (int *,int ) ;
 int bfa_ioc_get_nports (int *) ;
 int bfa_ioc_get_pci_chip_rev (int *,int ) ;
 int cpu_to_be32 (int ) ;
 int memset (struct bfa_fcs_fdmi_hba_attr_s*,int ,int) ;
 int strcpy (int ,char*) ;
 int strlcat (int ,char*,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
bfa_fcs_fdmi_get_hbaattr(struct bfa_fcs_lport_fdmi_s *fdmi,
    struct bfa_fcs_fdmi_hba_attr_s *hba_attr)
{
 struct bfa_fcs_lport_s *port = fdmi->ms->port;
 struct bfa_fcs_driver_info_s *driver_info = &port->fcs->driver_info;
 struct bfa_fcs_fdmi_port_attr_s fcs_port_attr;

 memset(hba_attr, 0, sizeof(struct bfa_fcs_fdmi_hba_attr_s));

 bfa_ioc_get_adapter_manufacturer(&port->fcs->bfa->ioc,
     hba_attr->manufacturer);
 bfa_ioc_get_adapter_serial_num(&port->fcs->bfa->ioc,
     hba_attr->serial_num);
 bfa_ioc_get_adapter_model(&port->fcs->bfa->ioc,
     hba_attr->model);
 bfa_ioc_get_adapter_model(&port->fcs->bfa->ioc,
     hba_attr->model_desc);
 bfa_ioc_get_pci_chip_rev(&port->fcs->bfa->ioc,
     hba_attr->hw_version);
 bfa_ioc_get_adapter_optrom_ver(&port->fcs->bfa->ioc,
     hba_attr->option_rom_ver);
 bfa_ioc_get_adapter_fw_ver(&port->fcs->bfa->ioc,
     hba_attr->fw_version);

 strlcpy(hba_attr->driver_version, (char *)driver_info->version,
  sizeof(hba_attr->driver_version));

 strlcpy(hba_attr->os_name, driver_info->host_os_name,
  sizeof(hba_attr->os_name));





 if (driver_info->host_os_patch[0] != '\0') {
  strlcat(hba_attr->os_name, BFA_FCS_PORT_SYMBNAME_SEPARATOR,
   sizeof(hba_attr->os_name));
  strlcat(hba_attr->os_name, driver_info->host_os_patch,
    sizeof(hba_attr->os_name));
 }


 bfa_fcs_fdmi_get_portattr(fdmi, &fcs_port_attr);
 hba_attr->max_ct_pyld = fcs_port_attr.max_frm_size;

 strlcpy(hba_attr->node_sym_name.symname,
  port->port_cfg.node_sym_name.symname, BFA_SYMNAME_MAXLEN);
 strcpy(hba_attr->vendor_info, "QLogic");
 hba_attr->num_ports =
  cpu_to_be32(bfa_ioc_get_nports(&port->fcs->bfa->ioc));
 hba_attr->fabric_name = port->fabric->lps->pr_nwwn;
 strlcpy(hba_attr->bios_ver, hba_attr->option_rom_ver, BFA_VERSION_LEN);

}
