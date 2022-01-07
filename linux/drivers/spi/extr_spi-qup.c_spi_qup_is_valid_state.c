
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_qup {scalar_t__ base; } ;


 scalar_t__ QUP_STATE ;
 int QUP_STATE_VALID ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline bool spi_qup_is_valid_state(struct spi_qup *controller)
{
 u32 opstate = readl_relaxed(controller->base + QUP_STATE);

 return opstate & QUP_STATE_VALID;
}
