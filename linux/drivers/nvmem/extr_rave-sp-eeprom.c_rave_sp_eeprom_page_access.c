
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rave_sp_eeprom_page {int * data; } ;
struct rave_sp_eeprom {int dummy; } ;
typedef enum rave_sp_eeprom_access_type { ____Placeholder_rave_sp_eeprom_access_type } rave_sp_eeprom_access_type ;


 int EINVAL ;
 unsigned int RAVE_SP_EEPROM_PAGE_SIZE ;
 int RAVE_SP_EEPROM_READ ;
 int RAVE_SP_EEPROM_WRITE ;
 scalar_t__ WARN_ON (int) ;
 int memcpy (int *,int *,size_t) ;
 int rave_sp_eeprom_io (struct rave_sp_eeprom*,int,unsigned int const,struct rave_sp_eeprom_page*) ;

__attribute__((used)) static int
rave_sp_eeprom_page_access(struct rave_sp_eeprom *eeprom,
      enum rave_sp_eeprom_access_type type,
      unsigned int offset, u8 *data,
      size_t data_len)
{
 const unsigned int page_offset = offset % RAVE_SP_EEPROM_PAGE_SIZE;
 const unsigned int page_nr = offset / RAVE_SP_EEPROM_PAGE_SIZE;
 struct rave_sp_eeprom_page page;
 int ret;







 if (WARN_ON(data_len > sizeof(page.data) - page_offset))
  return -EINVAL;

 if (type == RAVE_SP_EEPROM_WRITE) {




  if (data_len < RAVE_SP_EEPROM_PAGE_SIZE) {
   ret = rave_sp_eeprom_io(eeprom, RAVE_SP_EEPROM_READ,
      page_nr, &page);
   if (ret)
    return ret;
  }

  memcpy(&page.data[page_offset], data, data_len);
 }

 ret = rave_sp_eeprom_io(eeprom, type, page_nr, &page);
 if (ret)
  return ret;





 if (type == RAVE_SP_EEPROM_READ)
  memcpy(data, &page.data[page_offset], data_len);

 return 0;
}
