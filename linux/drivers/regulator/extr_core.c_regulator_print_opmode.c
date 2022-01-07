
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 char* regulator_opmode_to_str (int) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t regulator_print_opmode(char *buf, int mode)
{
 return sprintf(buf, "%s\n", regulator_opmode_to_str(mode));
}
