
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ms_info {int err_code; } ;
struct rtsx_chip {struct ms_info ms_card; } ;



__attribute__((used)) static inline void ms_set_err_code(struct rtsx_chip *chip, u8 err_code)
{
 struct ms_info *ms_card = &chip->ms_card;

 ms_card->err_code = err_code;
}
