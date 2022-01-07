
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
typedef int uint32_t ;
struct csio_wr_pair {int size1; int size2; void* addr2; scalar_t__ addr1; } ;


 int CSIO_DB_ASSERT (int) ;
 int memcpy (void*,void*,int) ;

void
csio_wr_copy_to_wrp(void *data_buf, struct csio_wr_pair *wrp,
     uint32_t wr_off, uint32_t data_len)
{
 uint32_t nbytes;


 nbytes = ((wrp->size1 - wr_off) >= data_len) ?
     data_len : (wrp->size1 - wr_off);

 memcpy((uint8_t *) wrp->addr1 + wr_off, data_buf, nbytes);
 data_len -= nbytes;


 if (data_len) {
  CSIO_DB_ASSERT(data_len <= wrp->size2);
  CSIO_DB_ASSERT(wrp->addr2 != ((void*)0));
  memcpy(wrp->addr2, (uint8_t *) data_buf + nbytes, data_len);
 }
}
