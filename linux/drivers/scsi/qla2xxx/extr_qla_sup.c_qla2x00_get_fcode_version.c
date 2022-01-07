
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef scalar_t__ uint32_t ;
struct qla_hw_data {char* fcode_revision; } ;


 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int memset (char*,int ,int) ;
 char qla2x00_read_flash_byte (struct qla_hw_data*,scalar_t__) ;

__attribute__((used)) static void
qla2x00_get_fcode_version(struct qla_hw_data *ha, uint32_t pcids)
{
 int ret = QLA_FUNCTION_FAILED;
 uint32_t istart, iend, iter, vend;
 uint8_t do_next, rbyte, *vbyte;

 memset(ha->fcode_revision, 0, sizeof(ha->fcode_revision));


 istart = pcids +
     ((qla2x00_read_flash_byte(ha, pcids + 0x0B) << 8) |
  qla2x00_read_flash_byte(ha, pcids + 0x0A));
 iend = istart + 0x100;
 do {

  do_next = 0;
  iter = istart;
  while ((iter < iend) && !do_next) {
   iter++;
   if (qla2x00_read_flash_byte(ha, iter) == '/') {
    if (qla2x00_read_flash_byte(ha, iter + 2) ==
        '/')
     do_next++;
    else if (qla2x00_read_flash_byte(ha,
        iter + 3) == '/')
     do_next++;
   }
  }
  if (!do_next)
   break;


  do_next = 0;
  while ((iter > istart) && !do_next) {
   iter--;
   if (qla2x00_read_flash_byte(ha, iter) == ' ')
    do_next++;
  }
  if (!do_next)
   break;





  vend = iter - 1;
  do_next = 0;
  while ((iter > istart) && !do_next) {
   iter--;
   rbyte = qla2x00_read_flash_byte(ha, iter);
   if (rbyte == ' ' || rbyte == 0xd || rbyte == 0x10)
    do_next++;
  }
  if (!do_next)
   break;


  iter++;
  if ((vend - iter) &&
      ((vend - iter) < sizeof(ha->fcode_revision))) {
   vbyte = ha->fcode_revision;
   while (iter <= vend) {
    *vbyte++ = qla2x00_read_flash_byte(ha, iter);
    iter++;
   }
   ret = QLA_SUCCESS;
  }
 } while (0);

 if (ret != QLA_SUCCESS)
  memset(ha->fcode_revision, 0, sizeof(ha->fcode_revision));
}
