
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpgaimage {int dummy; } ;


 int EINVAL ;

 int get_imageformat () ;
 int gs_print_header (struct fpgaimage*) ;
 int gs_read_bitstream (struct fpgaimage*) ;
 int pr_err (char*) ;
 int pr_info (char*) ;

__attribute__((used)) static int gs_read_image(struct fpgaimage *fimage)
{
 int img_fmt;
 int err;

 img_fmt = get_imageformat();

 switch (img_fmt) {
 case 128:
  pr_info("image is bitstream format\n");
  err = gs_read_bitstream(fimage);
  if (err)
   return err;
  break;
 default:
  pr_err("unsupported fpga image format\n");
  return -EINVAL;
 }

 gs_print_header(fimage);

 return 0;
}
