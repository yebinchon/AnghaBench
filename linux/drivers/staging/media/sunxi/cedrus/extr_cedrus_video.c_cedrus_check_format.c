
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cedrus_find_format (int ,int ,unsigned int) ;

__attribute__((used)) static bool cedrus_check_format(u32 pixelformat, u32 directions,
    unsigned int capabilities)
{
 return cedrus_find_format(pixelformat, directions, capabilities);
}
