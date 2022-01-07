
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int userid ;
struct qeth_card {int dummy; } ;
struct diag26c_vnic_resp {int resp_buf_len; scalar_t__ resp_version; scalar_t__ version; scalar_t__ protocol; int devno; int sys_name; int req_format; } ;
struct diag26c_vnic_req {int resp_buf_len; scalar_t__ resp_version; scalar_t__ version; scalar_t__ protocol; int devno; int sys_name; int req_format; } ;
struct ccw_dev_id {int devno; } ;
typedef enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;


 int ASCEBC (char*,int) ;
 int CARD_RDEV (struct qeth_card*) ;
 int CTRL ;
 int DIAG26C_PORT_VNIC ;
 scalar_t__ DIAG26C_VERSION6_VM65918 ;
 int DIAG26C_VNIC_INFO ;
 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_DBF_HEX (int ,int,struct diag26c_vnic_resp*,int) ;
 int QETH_DISCIPLINE_LAYER2 ;
 int QETH_DISCIPLINE_LAYER3 ;
 int QETH_DISCIPLINE_UNDETERMINED ;
 scalar_t__ VNIC_INFO_PROT_L2 ;
 scalar_t__ VNIC_INFO_PROT_L3 ;
 int ccw_device_get_id (int ,struct ccw_dev_id*) ;
 int cpcmd (char*,char*,int,int*) ;
 int diag26c (struct diag26c_vnic_resp*,struct diag26c_vnic_resp*,int ) ;
 int kfree (struct diag26c_vnic_resp*) ;
 struct diag26c_vnic_resp* kzalloc (int,int) ;
 int memcpy (int *,char*,int) ;

__attribute__((used)) static enum qeth_discipline_id qeth_vm_detect_layer(struct qeth_card *card)
{
 enum qeth_discipline_id disc = QETH_DISCIPLINE_UNDETERMINED;
 struct diag26c_vnic_resp *response = ((void*)0);
 struct diag26c_vnic_req *request = ((void*)0);
 struct ccw_dev_id id;
 char userid[80];
 int rc = 0;

 QETH_CARD_TEXT(card, 2, "vmlayer");

 cpcmd("QUERY USERID", userid, sizeof(userid), &rc);
 if (rc)
  goto out;

 request = kzalloc(sizeof(*request), GFP_KERNEL | GFP_DMA);
 response = kzalloc(sizeof(*response), GFP_KERNEL | GFP_DMA);
 if (!request || !response) {
  rc = -ENOMEM;
  goto out;
 }

 ccw_device_get_id(CARD_RDEV(card), &id);
 request->resp_buf_len = sizeof(*response);
 request->resp_version = DIAG26C_VERSION6_VM65918;
 request->req_format = DIAG26C_VNIC_INFO;
 ASCEBC(userid, 8);
 memcpy(&request->sys_name, userid, 8);
 request->devno = id.devno;

 QETH_DBF_HEX(CTRL, 2, request, sizeof(*request));
 rc = diag26c(request, response, DIAG26C_PORT_VNIC);
 QETH_DBF_HEX(CTRL, 2, request, sizeof(*request));
 if (rc)
  goto out;
 QETH_DBF_HEX(CTRL, 2, response, sizeof(*response));

 if (request->resp_buf_len < sizeof(*response) ||
     response->version != request->resp_version) {
  rc = -EIO;
  goto out;
 }

 if (response->protocol == VNIC_INFO_PROT_L2)
  disc = QETH_DISCIPLINE_LAYER2;
 else if (response->protocol == VNIC_INFO_PROT_L3)
  disc = QETH_DISCIPLINE_LAYER3;

out:
 kfree(response);
 kfree(request);
 if (rc)
  QETH_CARD_TEXT_(card, 2, "err%x", rc);
 return disc;
}
