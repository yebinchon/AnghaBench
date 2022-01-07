
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lcs_header {int offset; } ;
struct TYPE_6__ {scalar_t__ buf_idx; scalar_t__ io_idx; int state; TYPE_3__* ccws; TYPE_1__* iob; } ;
struct lcs_card {TYPE_2__ read; } ;
struct ccw1 {int dummy; } ;
typedef void* __u32 ;
struct TYPE_7__ {int flags; void* cda; int cmd_code; void* count; } ;
struct TYPE_5__ {void* count; int state; int callback; TYPE_3__* data; } ;


 int CCW_FLAG_CC ;
 int CCW_FLAG_PCI ;
 int CCW_FLAG_SLI ;
 int CCW_FLAG_SUSPEND ;
 int LCS_BUF_STATE_READY ;
 int LCS_CCW_READ ;
 int LCS_CCW_TRANSFER ;
 int LCS_CH_STATE_INIT ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_ILLEGAL_OFFSET ;
 void* LCS_IOBUFFERSIZE ;
 int LCS_NUM_BUFFS ;
 scalar_t__ __pa (TYPE_3__*) ;
 int lcs_get_frames_cb ;
 int memset (TYPE_3__*,int ,int) ;
 int setup ;

__attribute__((used)) static void
lcs_setup_read_ccws(struct lcs_card *card)
{
 int cnt;

 LCS_DBF_TEXT(2, setup, "ireadccw");

 memset(card->read.ccws, 0, sizeof (struct ccw1) * (LCS_NUM_BUFFS + 1));
 for (cnt = 0; cnt < LCS_NUM_BUFFS; cnt++) {
  card->read.ccws[cnt].cmd_code = LCS_CCW_READ;
  card->read.ccws[cnt].count = LCS_IOBUFFERSIZE;
  card->read.ccws[cnt].flags =
   CCW_FLAG_CC | CCW_FLAG_SLI | CCW_FLAG_PCI;




  card->read.ccws[cnt].cda =
   (__u32) __pa(card->read.iob[cnt].data);
  ((struct lcs_header *)
   card->read.iob[cnt].data)->offset = LCS_ILLEGAL_OFFSET;
  card->read.iob[cnt].callback = lcs_get_frames_cb;
  card->read.iob[cnt].state = LCS_BUF_STATE_READY;
  card->read.iob[cnt].count = LCS_IOBUFFERSIZE;
 }
 card->read.ccws[0].flags &= ~CCW_FLAG_PCI;
 card->read.ccws[LCS_NUM_BUFFS - 1].flags &= ~CCW_FLAG_PCI;
 card->read.ccws[LCS_NUM_BUFFS - 1].flags |= CCW_FLAG_SUSPEND;

 card->read.ccws[LCS_NUM_BUFFS].cmd_code = LCS_CCW_TRANSFER;
 card->read.ccws[LCS_NUM_BUFFS].cda =
  (__u32) __pa(card->read.ccws);

 card->read.state = LCS_CH_STATE_INIT;

 card->read.io_idx = 0;
 card->read.buf_idx = 0;
}
