
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hspi_priv {int dummy; } ;


 int SPSCR ;
 int hspi_bit_set (struct hspi_priv*,int ,int,int) ;

__attribute__((used)) static void hspi_hw_cs_ctrl(struct hspi_priv *hspi, int hi)
{
 hspi_bit_set(hspi, SPSCR, (1 << 6), (hi) << 6);
}
