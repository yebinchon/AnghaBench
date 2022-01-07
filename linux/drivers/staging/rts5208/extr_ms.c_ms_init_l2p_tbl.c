
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct zone_entry {int dummy; } ;
struct ms_info {int segment_cnt; int total_block; TYPE_1__* segment; int boot_block; } ;
struct rtsx_chip {struct ms_info ms_card; } ;
struct TYPE_3__ {int* defect_list; int disable_count; scalar_t__ unused_blk_cnt; scalar_t__ set_index; scalar_t__ get_index; int * free_table; int * l2p_table; scalar_t__ build_flag; } ;


 int PPBUF_BASE2 ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int dev_dbg (int ,char*,int,...) ;
 int ms_read_page (struct rtsx_chip*,int ,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_register (struct rtsx_chip*,int ,int*) ;
 int vfree (TYPE_1__*) ;
 TYPE_1__* vzalloc (int) ;

__attribute__((used)) static int ms_init_l2p_tbl(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 int size, i, seg_no, retval;
 u16 defect_block, reg_addr;
 u8 val1, val2;

 ms_card->segment_cnt = ms_card->total_block >> 9;
 dev_dbg(rtsx_dev(chip), "ms_card->segment_cnt = %d\n",
  ms_card->segment_cnt);

 size = ms_card->segment_cnt * sizeof(struct zone_entry);
 ms_card->segment = vzalloc(size);
 if (!ms_card->segment)
  return STATUS_FAIL;

 retval = ms_read_page(chip, ms_card->boot_block, 1);
 if (retval != STATUS_SUCCESS)
  goto INIT_FAIL;

 reg_addr = PPBUF_BASE2;
 for (i = 0; i < (((ms_card->total_block >> 9) * 10) + 1); i++) {
  int block_no;

  retval = rtsx_read_register(chip, reg_addr++, &val1);
  if (retval != STATUS_SUCCESS)
   goto INIT_FAIL;

  retval = rtsx_read_register(chip, reg_addr++, &val2);
  if (retval != STATUS_SUCCESS)
   goto INIT_FAIL;

  defect_block = ((u16)val1 << 8) | val2;
  if (defect_block == 0xFFFF)
   break;

  seg_no = defect_block / 512;

  block_no = ms_card->segment[seg_no].disable_count++;
  ms_card->segment[seg_no].defect_list[block_no] = defect_block;
 }

 for (i = 0; i < ms_card->segment_cnt; i++) {
  ms_card->segment[i].build_flag = 0;
  ms_card->segment[i].l2p_table = ((void*)0);
  ms_card->segment[i].free_table = ((void*)0);
  ms_card->segment[i].get_index = 0;
  ms_card->segment[i].set_index = 0;
  ms_card->segment[i].unused_blk_cnt = 0;

  dev_dbg(rtsx_dev(chip), "defective block count of segment %d is %d\n",
   i, ms_card->segment[i].disable_count);
 }

 return STATUS_SUCCESS;

INIT_FAIL:
 vfree(ms_card->segment);
 ms_card->segment = ((void*)0);

 return STATUS_FAIL;
}
