
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int use_dma ;

__attribute__((used)) static inline const char *dmastr(void)
{
 if (use_dma == 0)
  return "(dma disabled)";
 else if (use_dma == 2)
  return "(dma IN and OUT)";
 else
  return "(dma IN)";
}
