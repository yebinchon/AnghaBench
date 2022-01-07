
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ CSIO_HW_T5 ;

__attribute__((used)) static inline int csio_is_t5(uint16_t chip)
{
 return (chip == CSIO_HW_T5);
}
