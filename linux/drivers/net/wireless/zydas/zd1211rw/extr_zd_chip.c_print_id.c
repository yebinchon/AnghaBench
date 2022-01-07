
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int dummy; } ;
typedef int buffer ;


 int dev_info (int ,char*,char*) ;
 int scnprint_id (struct zd_chip*,char*,int) ;
 int zd_chip_dev (struct zd_chip*) ;

__attribute__((used)) static void print_id(struct zd_chip *chip)
{
 char buffer[80];

 scnprint_id(chip, buffer, sizeof(buffer));
 buffer[sizeof(buffer)-1] = 0;
 dev_info(zd_chip_dev(chip), "%s\n", buffer);
}
