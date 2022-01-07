
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum codespace_sel { ____Placeholder_codespace_sel } codespace_sel ;


 int enum_format (int *,int *,int ,int,int,int) ;

int imx_media_enum_format(u32 *fourcc, u32 index, enum codespace_sel cs_sel)
{
 return enum_format(fourcc, ((void*)0), index, cs_sel, 1, 0);
}
