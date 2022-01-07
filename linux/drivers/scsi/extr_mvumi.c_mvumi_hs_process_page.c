
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ver_build; } ;
struct mvumi_hs_page1 {int cl_inout_list_depth; int capability; int cl_in_max_entry_size; int cl_out_max_entry_size; TYPE_1__ fw_ver; int max_devices_support; int max_transfer_size; int max_io_support; } ;
struct mvumi_hs_header {unsigned char checksum; int page_code; int frame_length; } ;
struct mvumi_hba {int list_num_io; int hba_capability; int ib_max_size_setting; int ib_max_size; int ob_max_size_setting; int ob_max_size; int eot_flag; TYPE_2__* pdev; int max_target_id; int max_transfer_size; int max_io; } ;
struct TYPE_4__ {int dev; } ;


 int HS_CAPABILITY_NEW_PAGE_IO_DEPTH_DEF ;
 int HS_CAPABILITY_SUPPORT_COMPACT_SG ;

 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*) ;
 unsigned char mvumi_calculate_checksum (struct mvumi_hs_header*,int ) ;

__attribute__((used)) static int mvumi_hs_process_page(struct mvumi_hba *mhba,
    struct mvumi_hs_header *hs_header)
{
 struct mvumi_hs_page1 *hs_page1;
 unsigned char page_checksum;

 page_checksum = mvumi_calculate_checksum(hs_header,
      hs_header->frame_length);
 if (page_checksum != hs_header->checksum) {
  dev_err(&mhba->pdev->dev, "checksum error\n");
  return -1;
 }

 switch (hs_header->page_code) {
 case 128:
  hs_page1 = (struct mvumi_hs_page1 *) hs_header;

  mhba->max_io = hs_page1->max_io_support;
  mhba->list_num_io = hs_page1->cl_inout_list_depth;
  mhba->max_transfer_size = hs_page1->max_transfer_size;
  mhba->max_target_id = hs_page1->max_devices_support;
  mhba->hba_capability = hs_page1->capability;
  mhba->ib_max_size_setting = hs_page1->cl_in_max_entry_size;
  mhba->ib_max_size = (1 << hs_page1->cl_in_max_entry_size) << 2;

  mhba->ob_max_size_setting = hs_page1->cl_out_max_entry_size;
  mhba->ob_max_size = (1 << hs_page1->cl_out_max_entry_size) << 2;

  dev_dbg(&mhba->pdev->dev, "FW version:%d\n",
      hs_page1->fw_ver.ver_build);

  if (mhba->hba_capability & HS_CAPABILITY_SUPPORT_COMPACT_SG)
   mhba->eot_flag = 22;
  else
   mhba->eot_flag = 27;
  if (mhba->hba_capability & HS_CAPABILITY_NEW_PAGE_IO_DEPTH_DEF)
   mhba->list_num_io = 1 << hs_page1->cl_inout_list_depth;
  break;
 default:
  dev_err(&mhba->pdev->dev, "handshake: page code error\n");
  return -1;
 }
 return 0;
}
