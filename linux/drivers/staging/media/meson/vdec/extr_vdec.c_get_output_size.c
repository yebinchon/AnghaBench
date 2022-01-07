
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ALIGN (int,int ) ;
 int SZ_64K ;

__attribute__((used)) static u32 get_output_size(u32 width, u32 height)
{
 return ALIGN(width * height, SZ_64K);
}
