
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum codespace_sel { ____Placeholder_codespace_sel } codespace_sel ;


 int enum_format (int *,int *,int ,int,int,int) ;

int imx_media_enum_mbus_format(u32 *code, u32 index, enum codespace_sel cs_sel,
          bool allow_bayer)
{
 return enum_format(((void*)0), code, index, cs_sel, 0, allow_bayer);
}
