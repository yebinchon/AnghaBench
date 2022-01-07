
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matroxfb_dh_maven_info {int ddc1; } ;


 int i2c_bit_bus_del (int *) ;

__attribute__((used)) static inline void i2c_ddc1_done(struct matroxfb_dh_maven_info* minfo2) {
 i2c_bit_bus_del(&minfo2->ddc1);
}
