
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCL818_STATUS_MUX ;
 scalar_t__ PCL818_STATUS_REG ;
 int inb (scalar_t__) ;

__attribute__((used)) static int check_single_ended(unsigned int port)
{
 if (inb(port + PCL818_STATUS_REG) & PCL818_STATUS_MUX)
  return 1;
 return 0;
}
