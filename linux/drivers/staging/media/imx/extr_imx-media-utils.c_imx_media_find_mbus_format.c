
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_media_pixfmt {int dummy; } ;
typedef enum codespace_sel { ____Placeholder_codespace_sel } codespace_sel ;


 struct imx_media_pixfmt const* find_format (int ,int ,int,int,int) ;

const struct imx_media_pixfmt *
imx_media_find_mbus_format(u32 code, enum codespace_sel cs_sel,
      bool allow_bayer)
{
 return find_format(0, code, cs_sel, 0, allow_bayer);
}
