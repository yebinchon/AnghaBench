
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_info {int state; int dev; } ;


 long ADAPT_SUCCESS ;

 long ERROR ;
 int dev_err (int *,char*,int) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int const,int ) ;

__attribute__((used)) static long ibmvscsis_handle_init_compl_msg(struct scsi_info *vscsi)
{
 long rc = ADAPT_SUCCESS;

 switch (vscsi->state) {
 case 134:
 case 137:
 case 135:
 case 136:
 case 132:
 case 131:
  rc = ERROR;
  break;

 case 130:
  vscsi->state = 138;
  break;

 case 128:
 case 133:
 case 138:
 case 129:
 default:
  rc = ERROR;
  dev_err(&vscsi->dev, "init_msg: invalid state %d to get init compl msg\n",
   vscsi->state);
  ibmvscsis_post_disconnect(vscsi, 135, 0);
  break;
 }

 return rc;
}
