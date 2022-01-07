
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int QMI_ENCDEC_ENCODE_N_BYTES (void*,void const*,scalar_t__) ;

__attribute__((used)) static int qmi_encode_basic_elem(void *buf_dst, const void *buf_src,
     u32 elem_len, u32 elem_size)
{
 u32 i, rc = 0;

 for (i = 0; i < elem_len; i++) {
  QMI_ENCDEC_ENCODE_N_BYTES(buf_dst, buf_src, elem_size);
  rc += elem_size;
 }

 return rc;
}
