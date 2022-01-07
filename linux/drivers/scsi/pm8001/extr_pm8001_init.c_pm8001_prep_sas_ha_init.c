
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int lldd_ha; struct asd_sas_port** sas_port; struct asd_sas_port** sas_phy; } ;
struct pm8001_hba_info {int dummy; } ;
struct pm8001_chip_info {int n_phy; } ;
struct asd_sas_port {int dummy; } ;
typedef struct asd_sas_port asd_sas_phy ;
struct Scsi_Host {int max_lun; int max_cmd_len; int cmd_per_lun; int can_queue; int unique_id; scalar_t__ max_channel; int max_id; int transportt; } ;


 int GFP_KERNEL ;
 int PM8001_CAN_QUEUE ;
 int PM8001_MAX_DEVICES ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 struct asd_sas_port** kcalloc (int,int,int ) ;
 int kfree (struct asd_sas_port**) ;
 int kzalloc (int,int ) ;
 int memset (struct sas_ha_struct*,int,int) ;
 int pm8001_id ;
 int pm8001_stt ;

__attribute__((used)) static int pm8001_prep_sas_ha_init(struct Scsi_Host *shost,
       const struct pm8001_chip_info *chip_info)
{
 int phy_nr, port_nr;
 struct asd_sas_phy **arr_phy;
 struct asd_sas_port **arr_port;
 struct sas_ha_struct *sha = SHOST_TO_SAS_HA(shost);

 phy_nr = chip_info->n_phy;
 port_nr = phy_nr;
 memset(sha, 0x00, sizeof(*sha));
 arr_phy = kcalloc(phy_nr, sizeof(void *), GFP_KERNEL);
 if (!arr_phy)
  goto exit;
 arr_port = kcalloc(port_nr, sizeof(void *), GFP_KERNEL);
 if (!arr_port)
  goto exit_free2;

 sha->sas_phy = arr_phy;
 sha->sas_port = arr_port;
 sha->lldd_ha = kzalloc(sizeof(struct pm8001_hba_info), GFP_KERNEL);
 if (!sha->lldd_ha)
  goto exit_free1;

 shost->transportt = pm8001_stt;
 shost->max_id = PM8001_MAX_DEVICES;
 shost->max_lun = 8;
 shost->max_channel = 0;
 shost->unique_id = pm8001_id;
 shost->max_cmd_len = 16;
 shost->can_queue = PM8001_CAN_QUEUE;
 shost->cmd_per_lun = 32;
 return 0;
exit_free1:
 kfree(arr_port);
exit_free2:
 kfree(arr_phy);
exit:
 return -1;
}
