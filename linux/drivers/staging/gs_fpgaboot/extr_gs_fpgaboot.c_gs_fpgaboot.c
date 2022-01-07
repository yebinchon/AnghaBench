
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpgaimage {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bus_2byte ;
 int file ;
 int gs_download_image (struct fpgaimage*,int ) ;
 int gs_load_image (struct fpgaimage*,int ) ;
 int gs_read_image (struct fpgaimage*) ;
 int gs_release_image (struct fpgaimage*) ;
 int gs_set_download_method (struct fpgaimage*) ;
 int kfree (struct fpgaimage*) ;
 struct fpgaimage* kmalloc (int,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int gs_fpgaboot(void)
{
 int err;
 struct fpgaimage *fimage;

 fimage = kmalloc(sizeof(*fimage), GFP_KERNEL);
 if (!fimage)
  return -ENOMEM;

 err = gs_load_image(fimage, file);
 if (err) {
  pr_err("gs_load_image error\n");
  goto err_out1;
 }

 err = gs_read_image(fimage);
 if (err) {
  pr_err("gs_read_image error\n");
  goto err_out2;
 }

 err = gs_set_download_method(fimage);
 if (err) {
  pr_err("gs_set_download_method error\n");
  goto err_out2;
 }

 err = gs_download_image(fimage, bus_2byte);
 if (err) {
  pr_err("gs_download_image error\n");
  goto err_out2;
 }

 err = gs_release_image(fimage);
 if (err) {
  pr_err("gs_release_image error\n");
  goto err_out1;
 }

 kfree(fimage);
 return 0;

err_out2:
 err = gs_release_image(fimage);
 if (err)
  pr_err("gs_release_image error\n");
err_out1:
 kfree(fimage);

 return err;
}
