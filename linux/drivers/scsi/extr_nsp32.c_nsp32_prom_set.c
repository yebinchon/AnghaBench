
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int BaseAddress; } ;
typedef TYPE_1__ nsp32_hw_data ;


 int SERIAL_ROM_CTL ;
 int nsp32_index_read1 (int,int ) ;
 int nsp32_index_write1 (int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void nsp32_prom_set(nsp32_hw_data *data, int bit, int val)
{
 int base = data->BaseAddress;
 int tmp;

 tmp = nsp32_index_read1(base, SERIAL_ROM_CTL);

 if (val == 0) {
  tmp &= ~bit;
 } else {
  tmp |= bit;
 }

 nsp32_index_write1(base, SERIAL_ROM_CTL, tmp);

 udelay(10);
}
