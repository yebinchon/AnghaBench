
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;


 int memcpy (void*,void*,scalar_t__) ;

__attribute__((used)) static inline void
qla27xx_insertbuf(void *mem, ulong size, void *buf, ulong *len)
{
 if (buf && mem && size) {
  buf += *len;
  memcpy(buf, mem, size);
 }
 *len += size;
}
