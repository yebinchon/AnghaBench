
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPR_GET_FMT2_BAR_SEL (int) ;
__attribute__((used)) static inline int ipr_sdt_is_fmt2(u32 sdt_word)
{
 u32 bar_sel = IPR_GET_FMT2_BAR_SEL(sdt_word);

 switch (bar_sel) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return 1;
 };

 return 0;
}
