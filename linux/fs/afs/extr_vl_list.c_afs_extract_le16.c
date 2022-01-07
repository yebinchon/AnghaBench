
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u16 afs_extract_le16(const u8 **_b)
{
 u16 val;

 val = (u16)*(*_b)++ << 0;
 val |= (u16)*(*_b)++ << 8;
 return val;
}
