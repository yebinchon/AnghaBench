
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fpgaimage {int lendata; scalar_t__ fpgadata; } ;
typedef enum wbus { ____Placeholder_wbus } wbus ;


 int DUMP_PREFIX_OFFSET ;
 int EINVAL ;
 int EIO ;
 int MAX_WAIT_DONE ;
 int msleep (int) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int print_hex_dump_bytes (char*,int ,int *,int) ;
 int xl_csi_b (int ) ;
 scalar_t__ xl_get_done_b () ;
 scalar_t__ xl_get_init_b () ;
 int xl_program_b (int) ;
 int xl_rdwr_b (int ) ;
 int xl_shift_bytes_out (int,int *) ;
 int xl_shift_cclk (int) ;
 int xl_supported_prog_bus_width (int) ;

__attribute__((used)) static int gs_download_image(struct fpgaimage *fimage, enum wbus bus_bytes)
{
 u8 *bitdata;
 int size, i, cnt;

 cnt = 0;
 bitdata = (u8 *)fimage->fpgadata;
 size = fimage->lendata;





 if (!xl_supported_prog_bus_width(bus_bytes)) {
  pr_err("unsupported program bus width %d\n",
         bus_bytes);
  return -EINVAL;
 }


 xl_program_b(1);
 xl_rdwr_b(0);
 xl_csi_b(0);


 xl_program_b(0);
 msleep(20);
 xl_program_b(1);


 while (xl_get_init_b() == 0)
  ;

 pr_info("device init done\n");

 for (i = 0; i < size; i += bus_bytes)
  xl_shift_bytes_out(bus_bytes, bitdata + i);

 pr_info("program done\n");


 if (xl_get_init_b() == 0) {
  pr_err("init_b 0\n");
  return -EIO;
 }

 while (xl_get_done_b() == 0) {
  if (cnt++ > MAX_WAIT_DONE) {
   pr_err("init_B %d\n", xl_get_init_b());
   break;
  }
 }

 if (cnt > MAX_WAIT_DONE) {
  pr_err("fpga download fail\n");
  return -EIO;
 }

 pr_info("download fpgaimage\n");


 xl_shift_cclk(8);

 return 0;
}
