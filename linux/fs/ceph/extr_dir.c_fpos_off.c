
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int OFFSET_MASK ;

__attribute__((used)) static unsigned fpos_off(loff_t p)
{
 return p & OFFSET_MASK;
}
