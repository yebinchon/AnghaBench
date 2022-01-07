
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fsg_common {int* cmnd; int data_size_from_cmnd; int cmnd_size; scalar_t__ data_dir; int residue; int filesem; TYPE_1__* curlun; scalar_t__ short_packet_received; scalar_t__ phase_error; struct fsg_buffhd* next_buffhd_to_drain; struct fsg_buffhd* next_buffhd_to_fill; } ;
struct fsg_buffhd {int state; TYPE_2__* inreq; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {int sense_data; int cdrom; } ;



 int BUF_STATE_FULL ;
 scalar_t__ DATA_DIR_FROM_HOST ;
 scalar_t__ DATA_DIR_NONE ;
 scalar_t__ DATA_DIR_TO_HOST ;
 scalar_t__ DATA_DIR_UNKNOWN ;
 int EINTR ;
 int EINVAL ;
 int SS_INVALID_COMMAND ;







 int check_command (struct fsg_common*,int,scalar_t__,int,int,char*) ;
 int check_command_size_in_blocks (struct fsg_common*,int,scalar_t__,int,int,char*) ;
 int current ;
 int do_inquiry (struct fsg_common*,struct fsg_buffhd*) ;
 int do_mode_select (struct fsg_common*,struct fsg_buffhd*) ;
 int do_mode_sense (struct fsg_common*,struct fsg_buffhd*) ;
 int do_prevent_allow (struct fsg_common*) ;
 int do_read (struct fsg_common*) ;
 int do_read_capacity (struct fsg_common*,struct fsg_buffhd*) ;
 int do_read_format_capacities (struct fsg_common*,struct fsg_buffhd*) ;
 int do_read_header (struct fsg_common*,struct fsg_buffhd*) ;
 int do_read_toc (struct fsg_common*,struct fsg_buffhd*) ;
 int do_request_sense (struct fsg_common*,struct fsg_buffhd*) ;
 int do_start_stop (struct fsg_common*) ;
 int do_synchronize_cache (struct fsg_common*) ;
 int do_verify (struct fsg_common*) ;
 int do_write (struct fsg_common*) ;
 int down_read (int *) ;
 int dump_cdb (struct fsg_common*) ;
 void* get_unaligned_be16 (int*) ;
 void* get_unaligned_be32 (int*) ;
 int min (int ,int) ;
 scalar_t__ signal_pending (int ) ;
 int sleep_thread (struct fsg_common*,int,struct fsg_buffhd*) ;
 int sprintf (char*,char*,int) ;
 int up_read (int *) ;

__attribute__((used)) static int do_scsi_command(struct fsg_common *common)
{
 struct fsg_buffhd *bh;
 int rc;
 int reply = -EINVAL;
 int i;
 static char unknown[16];

 dump_cdb(common);


 bh = common->next_buffhd_to_fill;
 common->next_buffhd_to_drain = bh;
 rc = sleep_thread(common, 0, bh);
 if (rc)
  return rc;

 common->phase_error = 0;
 common->short_packet_received = 0;

 down_read(&common->filesem);
 switch (common->cmnd[0]) {

 case 150:
  common->data_size_from_cmnd = common->cmnd[4];
  reply = check_command(common, 6, DATA_DIR_TO_HOST,
          (1<<4), 0,
          "INQUIRY");
  if (reply == 0)
   reply = do_inquiry(common, bh);
  break;

 case 149:
  common->data_size_from_cmnd = common->cmnd[4];
  reply = check_command(common, 6, DATA_DIR_FROM_HOST,
          (1<<1) | (1<<4), 0,
          "MODE SELECT(6)");
  if (reply == 0)
   reply = do_mode_select(common, bh);
  break;

 case 148:
  common->data_size_from_cmnd =
   get_unaligned_be16(&common->cmnd[7]);
  reply = check_command(common, 10, DATA_DIR_FROM_HOST,
          (1<<1) | (3<<7), 0,
          "MODE SELECT(10)");
  if (reply == 0)
   reply = do_mode_select(common, bh);
  break;

 case 147:
  common->data_size_from_cmnd = common->cmnd[4];
  reply = check_command(common, 6, DATA_DIR_TO_HOST,
          (1<<1) | (1<<2) | (1<<4), 0,
          "MODE SENSE(6)");
  if (reply == 0)
   reply = do_mode_sense(common, bh);
  break;

 case 146:
  common->data_size_from_cmnd =
   get_unaligned_be16(&common->cmnd[7]);
  reply = check_command(common, 10, DATA_DIR_TO_HOST,
          (1<<1) | (1<<2) | (3<<7), 0,
          "MODE SENSE(10)");
  if (reply == 0)
   reply = do_mode_sense(common, bh);
  break;

 case 152:
  common->data_size_from_cmnd = 0;
  reply = check_command(common, 6, DATA_DIR_NONE,
          (1<<4), 0,
          "PREVENT-ALLOW MEDIUM REMOVAL");
  if (reply == 0)
   reply = do_prevent_allow(common);
  break;

 case 143:
  i = common->cmnd[4];
  common->data_size_from_cmnd = (i == 0) ? 256 : i;
  reply = check_command_size_in_blocks(common, 6,
          DATA_DIR_TO_HOST,
          (7<<1) | (1<<4), 1,
          "READ(6)");
  if (reply == 0)
   reply = do_read(common);
  break;

 case 145:
  common->data_size_from_cmnd =
    get_unaligned_be16(&common->cmnd[7]);
  reply = check_command_size_in_blocks(common, 10,
          DATA_DIR_TO_HOST,
          (1<<1) | (0xf<<2) | (3<<7), 1,
          "READ(10)");
  if (reply == 0)
   reply = do_read(common);
  break;

 case 144:
  common->data_size_from_cmnd =
    get_unaligned_be32(&common->cmnd[6]);
  reply = check_command_size_in_blocks(common, 12,
          DATA_DIR_TO_HOST,
          (1<<1) | (0xf<<2) | (0xf<<6), 1,
          "READ(12)");
  if (reply == 0)
   reply = do_read(common);
  break;

 case 142:
  common->data_size_from_cmnd = 8;
  reply = check_command(common, 10, DATA_DIR_TO_HOST,
          (0xf<<2) | (1<<8), 1,
          "READ CAPACITY");
  if (reply == 0)
   reply = do_read_capacity(common, bh);
  break;

 case 140:
  if (!common->curlun || !common->curlun->cdrom)
   goto unknown_cmnd;
  common->data_size_from_cmnd =
   get_unaligned_be16(&common->cmnd[7]);
  reply = check_command(common, 10, DATA_DIR_TO_HOST,
          (3<<7) | (0x1f<<1), 1,
          "READ HEADER");
  if (reply == 0)
   reply = do_read_header(common, bh);
  break;

 case 139:
  if (!common->curlun || !common->curlun->cdrom)
   goto unknown_cmnd;
  common->data_size_from_cmnd =
   get_unaligned_be16(&common->cmnd[7]);
  reply = check_command(common, 10, DATA_DIR_TO_HOST,
          (7<<6) | (1<<1), 1,
          "READ TOC");
  if (reply == 0)
   reply = do_read_toc(common, bh);
  break;

 case 141:
  common->data_size_from_cmnd =
   get_unaligned_be16(&common->cmnd[7]);
  reply = check_command(common, 10, DATA_DIR_TO_HOST,
          (3<<7), 1,
          "READ FORMAT CAPACITIES");
  if (reply == 0)
   reply = do_read_format_capacities(common, bh);
  break;

 case 137:
  common->data_size_from_cmnd = common->cmnd[4];
  reply = check_command(common, 6, DATA_DIR_TO_HOST,
          (1<<4), 0,
          "REQUEST SENSE");
  if (reply == 0)
   reply = do_request_sense(common, bh);
  break;

 case 134:
  common->data_size_from_cmnd = 0;
  reply = check_command(common, 6, DATA_DIR_NONE,
          (1<<1) | (1<<4), 0,
          "START-STOP UNIT");
  if (reply == 0)
   reply = do_start_stop(common);
  break;

 case 133:
  common->data_size_from_cmnd = 0;
  reply = check_command(common, 10, DATA_DIR_NONE,
          (0xf<<2) | (3<<7), 1,
          "SYNCHRONIZE CACHE");
  if (reply == 0)
   reply = do_synchronize_cache(common);
  break;

 case 132:
  common->data_size_from_cmnd = 0;
  reply = check_command(common, 6, DATA_DIR_NONE,
    0, 1,
    "TEST UNIT READY");
  break;





 case 131:
  common->data_size_from_cmnd = 0;
  reply = check_command(common, 10, DATA_DIR_NONE,
          (1<<1) | (0xf<<2) | (3<<7), 1,
          "VERIFY");
  if (reply == 0)
   reply = do_verify(common);
  break;

 case 128:
  i = common->cmnd[4];
  common->data_size_from_cmnd = (i == 0) ? 256 : i;
  reply = check_command_size_in_blocks(common, 6,
          DATA_DIR_FROM_HOST,
          (7<<1) | (1<<4), 1,
          "WRITE(6)");
  if (reply == 0)
   reply = do_write(common);
  break;

 case 130:
  common->data_size_from_cmnd =
    get_unaligned_be16(&common->cmnd[7]);
  reply = check_command_size_in_blocks(common, 10,
          DATA_DIR_FROM_HOST,
          (1<<1) | (0xf<<2) | (3<<7), 1,
          "WRITE(10)");
  if (reply == 0)
   reply = do_write(common);
  break;

 case 129:
  common->data_size_from_cmnd =
    get_unaligned_be32(&common->cmnd[6]);
  reply = check_command_size_in_blocks(common, 12,
          DATA_DIR_FROM_HOST,
          (1<<1) | (0xf<<2) | (0xf<<6), 1,
          "WRITE(12)");
  if (reply == 0)
   reply = do_write(common);
  break;







 case 151:
 case 138:
 case 136:
 case 135:


 default:
unknown_cmnd:
  common->data_size_from_cmnd = 0;
  sprintf(unknown, "Unknown x%02x", common->cmnd[0]);
  reply = check_command(common, common->cmnd_size,
          DATA_DIR_UNKNOWN, ~0, 0, unknown);
  if (reply == 0) {
   common->curlun->sense_data = SS_INVALID_COMMAND;
   reply = -EINVAL;
  }
  break;
 }
 up_read(&common->filesem);

 if (reply == -EINTR || signal_pending(current))
  return -EINTR;


 if (reply == -EINVAL)
  reply = 0;
 if (reply >= 0 && common->data_dir == DATA_DIR_TO_HOST) {
  reply = min((u32)reply, common->data_size_from_cmnd);
  bh->inreq->length = reply;
  bh->state = BUF_STATE_FULL;
  common->residue -= reply;
 }

 return 0;
}
