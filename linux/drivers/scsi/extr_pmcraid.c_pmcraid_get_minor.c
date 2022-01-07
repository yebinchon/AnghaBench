
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMCRAID_MAX_ADAPTERS ;
 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int ) ;
 int pmcraid_minor ;

__attribute__((used)) static unsigned short pmcraid_get_minor(void)
{
 int minor;

 minor = find_first_zero_bit(pmcraid_minor, PMCRAID_MAX_ADAPTERS);
 __set_bit(minor, pmcraid_minor);
 return minor;
}
