
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xd_info {int err_code; } ;
struct rtsx_chip {struct xd_info xd_card; } ;



__attribute__((used)) static inline void xd_set_err_code(struct rtsx_chip *chip, u8 err_code)
{
 struct xd_info *xd_card = &chip->xd_card;

 xd_card->err_code = err_code;
}
