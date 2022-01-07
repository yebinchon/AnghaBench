
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_info {int state; int dev; } ;


 long ADAPT_SUCCESS ;

 long ERROR ;







 int INIT_COMPLETE_MSG ;







 int dev_err (int *,char*,long) ;
 int dev_warn (int *,char*,long) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int const,int ) ;
 long ibmvscsis_send_init_message (struct scsi_info*,int ) ;

__attribute__((used)) static long ibmvscsis_handle_init_msg(struct scsi_info *vscsi)
{
 long rc = ADAPT_SUCCESS;

 switch (vscsi->state) {
 case 130:
  rc = ibmvscsis_send_init_message(vscsi, INIT_COMPLETE_MSG);
  switch (rc) {
  case 135:
   vscsi->state = 142;
   break;

  case 136:
   dev_err(&vscsi->dev, "init_msg: failed to send, rc %ld\n",
    rc);
   ibmvscsis_post_disconnect(vscsi, 141, 0);
   break;

  case 137:
   dev_err(&vscsi->dev, "init_msg: failed to send, rc %ld\n",
    rc);
   rc = ERROR;
   ibmvscsis_post_disconnect(vscsi,
        139, 0);
   break;

  case 138:
   dev_warn(&vscsi->dev, "init_msg: failed to send, rc %ld\n",
     rc);
   rc = 0;
   break;
  }
  break;

 case 131:
  rc = ERROR;
  break;

 case 132:
  break;

 case 129:
 case 142:
 case 133:
 case 128:
 case 134:
 case 141:
 case 139:
 case 140:
 default:
  rc = ERROR;
  dev_err(&vscsi->dev, "init_msg: invalid state %d to get init msg\n",
   vscsi->state);
  ibmvscsis_post_disconnect(vscsi, 139, 0);
  break;
 }

 return rc;
}
