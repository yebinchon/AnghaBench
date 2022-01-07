
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {scalar_t__ variant; } ;


 scalar_t__ ni_gpct_variant_e_series ;

__attribute__((used)) static inline bool
ni_tio_counting_mode_registers_present(const struct ni_gpct_device *counter_dev)
{

 return counter_dev->variant != ni_gpct_variant_e_series;
}
