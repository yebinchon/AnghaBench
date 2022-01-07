
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmic_wrapper {int dummy; } ;


 int PWRAP_CSHEXT_READ ;
 int PWRAP_CSHEXT_WRITE ;
 int PWRAP_CSLEXT_END ;
 int PWRAP_CSLEXT_START ;
 int pwrap_writel (struct pmic_wrapper*,int ,int ) ;

__attribute__((used)) static void pwrap_init_chip_select_ext(struct pmic_wrapper *wrp, u8 hext_write,
           u8 hext_read, u8 lext_start,
           u8 lext_end)
{





 pwrap_writel(wrp, hext_write, PWRAP_CSHEXT_WRITE);
 pwrap_writel(wrp, hext_read, PWRAP_CSHEXT_READ);






 pwrap_writel(wrp, lext_start, PWRAP_CSLEXT_START);
 pwrap_writel(wrp, lext_end, PWRAP_CSLEXT_END);
}
