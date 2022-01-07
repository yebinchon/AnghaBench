
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENUM_MASK ;
 int ENUM_PORT ;
 int inb_p (int ) ;

__attribute__((used)) static int zt5550_hc_query_enum(void)
{
 u8 value;

 value = inb_p(ENUM_PORT);
 return ((value & ENUM_MASK) == ENUM_MASK);
}
