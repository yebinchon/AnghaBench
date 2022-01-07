
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ EC_HOST_CMD_REGION0 ;
 int MEC_IO_WRITE ;
 int cros_ec_lpc_io_bytes_mec (int ,scalar_t__,unsigned int,int *) ;
 int cros_ec_lpc_mec_in_range (unsigned int,unsigned int) ;
 int cros_ec_lpc_write_bytes (unsigned int,unsigned int,int const*) ;

__attribute__((used)) static u8 cros_ec_lpc_mec_write_bytes(unsigned int offset, unsigned int length,
          const u8 *msg)
{
 int in_range = cros_ec_lpc_mec_in_range(offset, length);

 if (in_range < 0)
  return 0;

 return in_range ?
  cros_ec_lpc_io_bytes_mec(MEC_IO_WRITE,
      offset - EC_HOST_CMD_REGION0,
      length, (u8 *)msg) :
  cros_ec_lpc_write_bytes(offset, length, msg);
}
