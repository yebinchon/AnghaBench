
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int FW_8192C_PAGE_SIZE ;
 int _rtl88e_fw_page_write (struct adapter*,int,int *,int) ;

__attribute__((used)) static void _rtl88e_write_fw(struct adapter *adapt, u8 *buffer, u32 size)
{
 u8 *buf_ptr = buffer;
 u32 page_no, remain;
 u32 page, offset;

 page_no = size / FW_8192C_PAGE_SIZE;
 remain = size % FW_8192C_PAGE_SIZE;

 for (page = 0; page < page_no; page++) {
  offset = page * FW_8192C_PAGE_SIZE;
  _rtl88e_fw_page_write(adapt, page, (buf_ptr + offset),
          FW_8192C_PAGE_SIZE);
 }

 if (remain) {
  offset = page_no * FW_8192C_PAGE_SIZE;
  page = page_no;
  _rtl88e_fw_page_write(adapt, page, (buf_ptr + offset), remain);
 }
}
