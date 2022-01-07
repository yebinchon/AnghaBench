
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct m66592 {scalar_t__ reg; } ;


 int ioread16 (scalar_t__) ;

__attribute__((used)) static inline u16 m66592_read(struct m66592 *m66592, unsigned long offset)
{
 return ioread16(m66592->reg + offset);
}
