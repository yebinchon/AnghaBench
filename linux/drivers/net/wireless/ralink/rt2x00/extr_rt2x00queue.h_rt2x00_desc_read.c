
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __le32 ;


 int _rt2x00_desc_read (int *,int const) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 rt2x00_desc_read(__le32 *desc, const u8 word)
{
 return le32_to_cpu(_rt2x00_desc_read(desc, word));
}
