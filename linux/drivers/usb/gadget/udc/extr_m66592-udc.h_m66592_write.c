
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct m66592 {scalar_t__ reg; } ;


 int iowrite16 (int ,scalar_t__) ;

__attribute__((used)) static inline void m66592_write(struct m66592 *m66592, u16 val,
    unsigned long offset)
{
 iowrite16(val, m66592->reg + offset);
}
