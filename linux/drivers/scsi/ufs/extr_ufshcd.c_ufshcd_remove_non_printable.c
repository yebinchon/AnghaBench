
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline char ufshcd_remove_non_printable(u8 ch)
{
 return (ch >= 0x20 && ch <= 0x7e) ? ch : ' ';
}
