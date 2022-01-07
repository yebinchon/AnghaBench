
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u64 ;
struct mvumi_hs_page4 {void* ib_depth; void* ob_depth; int ob_entry_size; int ib_entry_size; void* ob_baseaddr_h; void* ob_baseaddr_l; void* ib_baseaddr_h; void* ib_baseaddr_l; } ;
struct mvumi_hs_page3 {int dummy; } ;
struct TYPE_4__ {int ver_build; int ver_oem; int ver_minor; int ver_major; } ;
struct mvumi_hs_page2 {int host_type; int host_cap; int seconds_since1970; int intr_vector; int intr_level; int slot_number; int system_io_bus; TYPE_1__ host_ver; } ;
struct mvumi_hs_header {int page_code; int frame_length; void* checksum; int frame_content; } ;
struct mvumi_hba {int hba_capability; TYPE_2__* pdev; int list_num_io; int ob_max_size_setting; int ib_max_size_setting; int ob_list_phys; int ib_list_phys; } ;
struct TYPE_6__ {int tz_minuteswest; } ;
struct TYPE_5__ {int dev; } ;


 int BITS_PER_LONG ;
 int HS_CAPABILITY_NEW_PAGE_IO_DEPTH_DEF ;
 int HS_CAPABILITY_SUPPORT_DYN_SRC ;



 int VER_BUILD ;
 int VER_MAJOR ;
 int VER_MINOR ;
 int VER_OEM ;
 int dev_err (int *,char*,int) ;
 void* find_first_bit (unsigned long*,int ) ;
 int ktime_get_real_seconds () ;
 void* lower_32_bits (int ) ;
 int memset (int ,int ,int) ;
 void* mvumi_calculate_checksum (struct mvumi_hs_header*,int) ;
 TYPE_3__ sys_tz ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void mvumi_hs_build_page(struct mvumi_hba *mhba,
    struct mvumi_hs_header *hs_header)
{
 struct mvumi_hs_page2 *hs_page2;
 struct mvumi_hs_page4 *hs_page4;
 struct mvumi_hs_page3 *hs_page3;
 u64 time;
 u64 local_time;

 switch (hs_header->page_code) {
 case 128:
  hs_page2 = (struct mvumi_hs_page2 *) hs_header;
  hs_header->frame_length = sizeof(*hs_page2) - 4;
  memset(hs_header->frame_content, 0, hs_header->frame_length);
  hs_page2->host_type = 3;
  if (mhba->hba_capability & HS_CAPABILITY_SUPPORT_DYN_SRC)
   hs_page2->host_cap = 0x08;
  hs_page2->host_ver.ver_major = VER_MAJOR;
  hs_page2->host_ver.ver_minor = VER_MINOR;
  hs_page2->host_ver.ver_oem = VER_OEM;
  hs_page2->host_ver.ver_build = VER_BUILD;
  hs_page2->system_io_bus = 0;
  hs_page2->slot_number = 0;
  hs_page2->intr_level = 0;
  hs_page2->intr_vector = 0;
  time = ktime_get_real_seconds();
  local_time = (time - (sys_tz.tz_minuteswest * 60));
  hs_page2->seconds_since1970 = local_time;
  hs_header->checksum = mvumi_calculate_checksum(hs_header,
      hs_header->frame_length);
  break;

 case 129:
  hs_page3 = (struct mvumi_hs_page3 *) hs_header;
  hs_header->frame_length = sizeof(*hs_page3) - 4;
  memset(hs_header->frame_content, 0, hs_header->frame_length);
  hs_header->checksum = mvumi_calculate_checksum(hs_header,
      hs_header->frame_length);
  break;

 case 130:
  hs_page4 = (struct mvumi_hs_page4 *) hs_header;
  hs_header->frame_length = sizeof(*hs_page4) - 4;
  memset(hs_header->frame_content, 0, hs_header->frame_length);
  hs_page4->ib_baseaddr_l = lower_32_bits(mhba->ib_list_phys);
  hs_page4->ib_baseaddr_h = upper_32_bits(mhba->ib_list_phys);

  hs_page4->ob_baseaddr_l = lower_32_bits(mhba->ob_list_phys);
  hs_page4->ob_baseaddr_h = upper_32_bits(mhba->ob_list_phys);
  hs_page4->ib_entry_size = mhba->ib_max_size_setting;
  hs_page4->ob_entry_size = mhba->ob_max_size_setting;
  if (mhba->hba_capability
   & HS_CAPABILITY_NEW_PAGE_IO_DEPTH_DEF) {
   hs_page4->ob_depth = find_first_bit((unsigned long *)
           &mhba->list_num_io,
           BITS_PER_LONG);
   hs_page4->ib_depth = find_first_bit((unsigned long *)
           &mhba->list_num_io,
           BITS_PER_LONG);
  } else {
   hs_page4->ob_depth = (u8) mhba->list_num_io;
   hs_page4->ib_depth = (u8) mhba->list_num_io;
  }
  hs_header->checksum = mvumi_calculate_checksum(hs_header,
      hs_header->frame_length);
  break;

 default:
  dev_err(&mhba->pdev->dev, "cannot build page, code[0x%x]\n",
   hs_header->page_code);
  break;
 }
}
