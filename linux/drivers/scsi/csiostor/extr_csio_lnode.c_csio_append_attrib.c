
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct fc_fdmi_attr_entry {scalar_t__ value; void* len; void* type; } ;


 size_t U16_MAX ;
 scalar_t__ WARN_ON (int) ;
 void* htons (int) ;
 int memcpy (scalar_t__,void*,size_t) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static inline void
csio_append_attrib(uint8_t **ptr, uint16_t type, void *val, size_t val_len)
{
 uint16_t len;
 struct fc_fdmi_attr_entry *ae = (struct fc_fdmi_attr_entry *)*ptr;

 if (WARN_ON(val_len > U16_MAX))
  return;

 len = val_len;

 ae->type = htons(type);
 len += 4;
 len = (len + 3) & ~3;
 ae->len = htons(len);
 memcpy(ae->value, val, val_len);
 if (len > val_len)
  memset(ae->value + val_len, 0, len - val_len);
 *ptr += len;
}
