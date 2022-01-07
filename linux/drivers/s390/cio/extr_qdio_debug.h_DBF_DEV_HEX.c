
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_irq {int debug_area; } ;


 int debug_event (int ,int,void*,int) ;

__attribute__((used)) static inline void DBF_DEV_HEX(struct qdio_irq *dev, void *addr,
          int len, int level)
{
 debug_event(dev->debug_area, level, addr, len);
}
