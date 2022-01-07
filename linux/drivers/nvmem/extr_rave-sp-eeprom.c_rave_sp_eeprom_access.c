
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rave_sp_eeprom {int mutex; } ;
typedef enum rave_sp_eeprom_access_type { ____Placeholder_rave_sp_eeprom_access_type } rave_sp_eeprom_access_type ;


 unsigned int RAVE_SP_EEPROM_PAGE_SIZE ;
 unsigned int min (unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rave_sp_eeprom_page_access (struct rave_sp_eeprom*,int,unsigned int,int *,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static int rave_sp_eeprom_access(struct rave_sp_eeprom *eeprom,
     enum rave_sp_eeprom_access_type type,
     unsigned int offset, u8 *data,
     unsigned int data_len)
{
 unsigned int residue;
 unsigned int chunk;
 unsigned int head;
 int ret;

 mutex_lock(&eeprom->mutex);

 head = offset % RAVE_SP_EEPROM_PAGE_SIZE;
 residue = data_len;

 do {






  if (unlikely(head)) {
   chunk = RAVE_SP_EEPROM_PAGE_SIZE - head;






   head = 0;
  } else {
   chunk = RAVE_SP_EEPROM_PAGE_SIZE;
  }




  chunk = min(chunk, residue);
  ret = rave_sp_eeprom_page_access(eeprom, type, offset,
       data, chunk);
  if (ret)
   goto out;

  residue -= chunk;
  offset += chunk;
  data += chunk;
 } while (residue);
out:
 mutex_unlock(&eeprom->mutex);
 return ret;
}
