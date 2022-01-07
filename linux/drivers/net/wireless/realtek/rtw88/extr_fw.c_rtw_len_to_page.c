
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DIV_ROUND_UP (unsigned int,int ) ;

__attribute__((used)) static inline u8 rtw_len_to_page(unsigned int len, u8 page_size)
{
 return DIV_ROUND_UP(len, page_size);
}
