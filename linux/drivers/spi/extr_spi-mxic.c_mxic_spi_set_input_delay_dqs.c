
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxic_spi {scalar_t__ regs; } ;


 scalar_t__ IDLY_CODE (int) ;
 int IDLY_CODE_VAL (int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxic_spi_set_input_delay_dqs(struct mxic_spi *mxic, u8 idly_code)
{
 writel(IDLY_CODE_VAL(0, idly_code) |
        IDLY_CODE_VAL(1, idly_code) |
        IDLY_CODE_VAL(2, idly_code) |
        IDLY_CODE_VAL(3, idly_code),
        mxic->regs + IDLY_CODE(0));
 writel(IDLY_CODE_VAL(4, idly_code) |
        IDLY_CODE_VAL(5, idly_code) |
        IDLY_CODE_VAL(6, idly_code) |
        IDLY_CODE_VAL(7, idly_code),
        mxic->regs + IDLY_CODE(1));
}
