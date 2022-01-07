
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int HPEE_MAX_LENGTH ;
 int fixed_size_llseek (struct file*,int ,int,int ) ;

__attribute__((used)) static loff_t eisa_eeprom_llseek(struct file *file, loff_t offset, int origin)
{
 return fixed_size_llseek(file, offset, origin, HPEE_MAX_LENGTH);
}
