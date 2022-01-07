
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imgu_device {int dummy; } ;
struct imgu_css {int * fw; int * binary; TYPE_2__* fwp; int dev; } ;
struct TYPE_3__ {unsigned int binary_nr; } ;
struct TYPE_4__ {TYPE_1__ file_header; } ;


 struct imgu_device* dev_get_drvdata (int ) ;
 int imgu_dmamap_free (struct imgu_device*,int *) ;
 int kfree (int *) ;
 int release_firmware (int *) ;

void imgu_css_fw_cleanup(struct imgu_css *css)
{
 struct imgu_device *imgu = dev_get_drvdata(css->dev);

 if (css->binary) {
  unsigned int i;

  for (i = 0; i < css->fwp->file_header.binary_nr; i++)
   imgu_dmamap_free(imgu, &css->binary[i]);
  kfree(css->binary);
 }
 if (css->fw)
  release_firmware(css->fw);

 css->binary = ((void*)0);
 css->fw = ((void*)0);
}
