
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int ADFS_FILETYPE_NONE ;

__attribute__((used)) static inline u16 adfs_filetype(u32 loadaddr)
{
 return (loadaddr & 0xfff00000) == 0xfff00000 ?
        (loadaddr >> 8) & 0xfff : ADFS_FILETYPE_NONE;
}
