
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef enum cros_ec_lpc_mec_io_type { ____Placeholder_cros_ec_lpc_mec_io_type } cros_ec_lpc_mec_io_type ;
typedef enum cros_ec_lpc_mec_emi_access_mode { ____Placeholder_cros_ec_lpc_mec_emi_access_mode } cros_ec_lpc_mec_emi_access_mode ;


 int ACCESS_TYPE_BYTE ;
 int ACCESS_TYPE_LONG_AUTO_INCREMENT ;
 unsigned int MEC_EMI_EC_DATA_B0 (scalar_t__) ;
 int MEC_EMI_EC_DATA_B3 (scalar_t__) ;
 int MEC_IO_READ ;
 int MEC_IO_WRITE ;
 int WARN_ON (int) ;
 int cros_ec_lpc_mec_emi_write_address (unsigned int,int) ;
 scalar_t__ inb (int ) ;
 int io_mutex ;
 scalar_t__ mec_emi_base ;
 scalar_t__ mec_emi_end ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (scalar_t__,int ) ;

u8 cros_ec_lpc_io_bytes_mec(enum cros_ec_lpc_mec_io_type io_type,
       unsigned int offset, unsigned int length,
       u8 *buf)
{
 int i = 0;
 int io_addr;
 u8 sum = 0;
 enum cros_ec_lpc_mec_emi_access_mode access, new_access;


 WARN_ON(mec_emi_base == 0 || mec_emi_end == 0);
 if (mec_emi_base == 0 || mec_emi_end == 0)
  return 0;





 if (offset & 0x3 || length < 4)
  access = ACCESS_TYPE_BYTE;
 else
  access = ACCESS_TYPE_LONG_AUTO_INCREMENT;

 mutex_lock(&io_mutex);


 cros_ec_lpc_mec_emi_write_address(offset, access);


 io_addr = MEC_EMI_EC_DATA_B0(mec_emi_base) + (offset & 0x3);
 while (i < length) {
  while (io_addr <= MEC_EMI_EC_DATA_B3(mec_emi_base)) {
   if (io_type == MEC_IO_READ)
    buf[i] = inb(io_addr++);
   else
    outb(buf[i], io_addr++);

   sum += buf[i++];
   offset++;


   if (i == length)
    goto done;
  }





  if (length - i < 4 && io_type == MEC_IO_WRITE)
   new_access = ACCESS_TYPE_BYTE;
  else
   new_access = ACCESS_TYPE_LONG_AUTO_INCREMENT;

  if (new_access != access ||
      access != ACCESS_TYPE_LONG_AUTO_INCREMENT) {
   access = new_access;
   cros_ec_lpc_mec_emi_write_address(offset, access);
  }


  io_addr = MEC_EMI_EC_DATA_B0(mec_emi_base);
 }

done:
 mutex_unlock(&io_mutex);

 return sum;
}
