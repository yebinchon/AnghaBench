
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsp32_hw_data ;


 int ENA ;
 int SCL ;
 int SDA ;
 int nsp32_prom_get (int *,int ) ;
 int nsp32_prom_set (int *,int ,int) ;

__attribute__((used)) static int nsp32_prom_read_bit(nsp32_hw_data *data)
{
 int val;


 nsp32_prom_set(data, ENA, 0);
 nsp32_prom_set(data, SCL, 1);

 val = nsp32_prom_get(data, SDA);

 nsp32_prom_set(data, SCL, 0);
 nsp32_prom_set(data, ENA, 1);

 return val;
}
