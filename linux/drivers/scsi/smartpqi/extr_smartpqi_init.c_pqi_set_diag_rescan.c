
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;
struct bmic_diag_options {int options; } ;


 int BMIC_SENSE_DIAG_OPTIONS ;
 int BMIC_SET_DIAG_OPTIONS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PQI_FETCH_PTRAID_DATA ;
 int cpu_to_le32 (int ) ;
 int kfree (struct bmic_diag_options*) ;
 struct bmic_diag_options* kzalloc (int,int ) ;
 int pqi_send_ctrl_raid_request (struct pqi_ctrl_info*,int ,struct bmic_diag_options*,int) ;

__attribute__((used)) static int pqi_set_diag_rescan(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 struct bmic_diag_options *diag;

 diag = kzalloc(sizeof(*diag), GFP_KERNEL);
 if (!diag)
  return -ENOMEM;

 rc = pqi_send_ctrl_raid_request(ctrl_info, BMIC_SENSE_DIAG_OPTIONS,
     diag, sizeof(*diag));
 if (rc)
  goto out;

 diag->options |= cpu_to_le32(PQI_FETCH_PTRAID_DATA);

 rc = pqi_send_ctrl_raid_request(ctrl_info, BMIC_SET_DIAG_OPTIONS,
     diag, sizeof(*diag));
out:
 kfree(diag);

 return rc;
}
