
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdebug_dev_info {int channel; TYPE_2__* sdbg_host; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;
struct TYPE_4__ {TYPE_1__* shost; } ;
struct TYPE_3__ {int host_no; } ;


 int DID_REQUEUE ;
 int GFP_ATOMIC ;
 int SDEBUG_MAX_TGTPGS_ARR_SZ ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 int get_unaligned_be32 (unsigned char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int min (int,int) ;
 int put_unaligned_be16 (int,unsigned char*) ;
 int put_unaligned_be32 (int,unsigned char*) ;
 scalar_t__ sdebug_vpd_use_hostno ;

__attribute__((used)) static int resp_report_tgtpgs(struct scsi_cmnd *scp,
         struct sdebug_dev_info *devip)
{
 unsigned char *cmd = scp->cmnd;
 unsigned char *arr;
 int host_no = devip->sdbg_host->shost->host_no;
 int n, ret, alen, rlen;
 int port_group_a, port_group_b, port_a, port_b;

 alen = get_unaligned_be32(cmd + 6);
 arr = kzalloc(SDEBUG_MAX_TGTPGS_ARR_SZ, GFP_ATOMIC);
 if (! arr)
  return DID_REQUEUE << 16;






 port_a = 0x1;
 port_b = 0x2;
 port_group_a = (((host_no + 1) & 0x7f) << 8) +
   (devip->channel & 0x7f);
 port_group_b = (((host_no + 1) & 0x7f) << 8) +
   (devip->channel & 0x7f) + 0x80;




 n = 4;
 if (sdebug_vpd_use_hostno == 0) {
  arr[n++] = host_no % 3;
  arr[n++] = 0x0F;
 } else {
  arr[n++] = 0x0;
  arr[n++] = 0x01;
 }
 put_unaligned_be16(port_group_a, arr + n);
 n += 2;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = 0x1;
 arr[n++] = 0;
 arr[n++] = 0;
 put_unaligned_be16(port_a, arr + n);
 n += 2;
 arr[n++] = 3;
 arr[n++] = 0x08;
 put_unaligned_be16(port_group_b, arr + n);
 n += 2;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = 0;
 arr[n++] = 0x1;
 arr[n++] = 0;
 arr[n++] = 0;
 put_unaligned_be16(port_b, arr + n);
 n += 2;

 rlen = n - 4;
 put_unaligned_be32(rlen, arr + 0);







 rlen = min(alen,n);
 ret = fill_from_dev_buffer(scp, arr,
       min(rlen, SDEBUG_MAX_TGTPGS_ARR_SZ));
 kfree(arr);
 return ret;
}
