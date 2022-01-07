
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct hisi_sas_port {int id; } ;
struct hisi_sas_itct {void* qw2; void* sas_addr; void* qw0; } ;
struct hisi_sas_device {size_t device_id; int dev_type; struct domain_device* sas_device; } ;
struct hisi_hba {struct hisi_sas_itct* itct; struct device* dev; } ;
struct domain_device {int linkrate; int sas_addr; int dev_type; struct asd_sas_port* port; struct domain_device* parent; } ;
struct device {int dummy; } ;
struct asd_sas_port {int dummy; } ;


 size_t HISI_SAS_DEV_TYPE_SATA ;
 size_t HISI_SAS_DEV_TYPE_SSP ;
 size_t HISI_SAS_DEV_TYPE_STP ;
 int ITCT_HDR_AWT_CONTINUE_OFF ;
 size_t ITCT_HDR_DEV_TYPE_OFF ;
 unsigned long long ITCT_HDR_INLT_OFF ;
 int ITCT_HDR_MCR_OFF ;
 int ITCT_HDR_PORT_ID_OFF ;
 int ITCT_HDR_RTOLT_OFF ;
 int ITCT_HDR_SMP_TIMEOUT_OFF ;
 int ITCT_HDR_VALID_OFF ;
 int ITCT_HDR_VLN_OFF ;
 int SAS_ADDR_SIZE ;





 unsigned long long __swab64 (size_t) ;
 void* cpu_to_le64 (unsigned long long) ;
 int dev_is_expander (int ) ;
 int dev_is_sata (struct domain_device*) ;
 int dev_warn (struct device*,char*,int) ;
 int memcpy (size_t*,int ,int ) ;
 int memset (struct hisi_sas_itct*,int ,int) ;
 struct hisi_sas_port* to_hisi_sas_port (struct asd_sas_port*) ;

__attribute__((used)) static void setup_itct_v3_hw(struct hisi_hba *hisi_hba,
        struct hisi_sas_device *sas_dev)
{
 struct domain_device *device = sas_dev->sas_device;
 struct device *dev = hisi_hba->dev;
 u64 qw0, device_id = sas_dev->device_id;
 struct hisi_sas_itct *itct = &hisi_hba->itct[device_id];
 struct domain_device *parent_dev = device->parent;
 struct asd_sas_port *sas_port = device->port;
 struct hisi_sas_port *port = to_hisi_sas_port(sas_port);
 u64 sas_addr;

 memset(itct, 0, sizeof(*itct));


 qw0 = 0;
 switch (sas_dev->dev_type) {
 case 131:
 case 132:
 case 130:
  qw0 = HISI_SAS_DEV_TYPE_SSP << ITCT_HDR_DEV_TYPE_OFF;
  break;
 case 129:
 case 128:
  if (parent_dev && dev_is_expander(parent_dev->dev_type))
   qw0 = HISI_SAS_DEV_TYPE_STP << ITCT_HDR_DEV_TYPE_OFF;
  else
   qw0 = HISI_SAS_DEV_TYPE_SATA << ITCT_HDR_DEV_TYPE_OFF;
  break;
 default:
  dev_warn(dev, "setup itct: unsupported dev type (%d)\n",
    sas_dev->dev_type);
 }

 qw0 |= ((1 << ITCT_HDR_VALID_OFF) |
  (device->linkrate << ITCT_HDR_MCR_OFF) |
  (1 << ITCT_HDR_VLN_OFF) |
  (0xfa << ITCT_HDR_SMP_TIMEOUT_OFF) |
  (1 << ITCT_HDR_AWT_CONTINUE_OFF) |
  (port->id << ITCT_HDR_PORT_ID_OFF));
 itct->qw0 = cpu_to_le64(qw0);


 memcpy(&sas_addr, device->sas_addr, SAS_ADDR_SIZE);
 itct->sas_addr = cpu_to_le64(__swab64(sas_addr));


 if (!dev_is_sata(device))
  itct->qw2 = cpu_to_le64((5000ULL << ITCT_HDR_INLT_OFF) |
     (0x1ULL << ITCT_HDR_RTOLT_OFF));
}
