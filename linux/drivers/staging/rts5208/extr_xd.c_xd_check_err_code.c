
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct xd_info {scalar_t__ err_code; } ;
struct rtsx_chip {struct xd_info xd_card; } ;



__attribute__((used)) static inline int xd_check_err_code(struct rtsx_chip *chip, u8 err_code)
{
 struct xd_info *xd_card = &chip->xd_card;

 return (xd_card->err_code == err_code);
}
