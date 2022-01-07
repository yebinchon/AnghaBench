
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viafb_shared {int i2c_2C; int i2c_31; int i2c_26; } ;


 int via_aux_free (int ) ;

__attribute__((used)) static void i2c_bus_free(struct viafb_shared *shared)
{
 via_aux_free(shared->i2c_26);
 via_aux_free(shared->i2c_31);
 via_aux_free(shared->i2c_2C);
}
