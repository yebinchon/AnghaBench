
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int retriveFromFile (char*,int *,int ) ;

int rtw_retrive_from_file(char *path, u8 *buf, u32 sz)
{
 int ret = retriveFromFile(path, buf, sz);
 return ret >= 0 ? ret : 0;
}
