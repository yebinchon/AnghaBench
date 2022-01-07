
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8727_chg {int dummy; } ;


 int lp8727_read_bytes (struct lp8727_chg*,int ,int *,int) ;

__attribute__((used)) static inline int lp8727_read_byte(struct lp8727_chg *pchg, u8 reg, u8 *data)
{
 return lp8727_read_bytes(pchg, reg, data, 1);
}
