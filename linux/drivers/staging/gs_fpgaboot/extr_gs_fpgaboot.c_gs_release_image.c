
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpgaimage {int fw_entry; } ;


 int pr_info (char*) ;
 int release_firmware (int ) ;

__attribute__((used)) static int gs_release_image(struct fpgaimage *fimage)
{
 release_firmware(fimage->fw_entry);
 pr_info("release fpgaimage\n");

 return 0;
}
