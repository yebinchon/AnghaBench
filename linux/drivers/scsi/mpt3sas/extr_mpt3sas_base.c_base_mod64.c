
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static u32 base_mod64(u64 dividend, u32 divisor)
{
 u32 remainder;

 if (!divisor)
  pr_err("mpt3sas: DIVISOR is zero, in div fn\n");
 remainder = do_div(dividend, divisor);
 return remainder;
}
