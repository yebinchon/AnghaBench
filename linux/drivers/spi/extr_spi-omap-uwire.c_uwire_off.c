
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int master; } ;
struct uwire_spi {TYPE_1__ bitbang; int ck; } ;


 int UWIRE_SR3 ;
 int clk_disable (int ) ;
 int spi_master_put (int ) ;
 int uwire_write_reg (int ,int ) ;

__attribute__((used)) static void uwire_off(struct uwire_spi *uwire)
{
 uwire_write_reg(UWIRE_SR3, 0);
 clk_disable(uwire->ck);
 spi_master_put(uwire->bitbang.master);
}
