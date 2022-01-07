
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ssize_t ;
typedef int loff_t ;


 int EDID_LENGTH ;
 int memory_read_from_buffer (char*,size_t,int *,int const*,int ) ;

__attribute__((used)) static ssize_t radeon_show_one_edid(char *buf, loff_t off, size_t count, const u8 *edid)
{
 return memory_read_from_buffer(buf, count, &off, edid, EDID_LENGTH);
}
