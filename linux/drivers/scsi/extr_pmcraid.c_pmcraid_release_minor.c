
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clear_bit (unsigned short,int ) ;
 int pmcraid_minor ;

__attribute__((used)) static void pmcraid_release_minor(unsigned short minor)
{
 __clear_bit(minor, pmcraid_minor);
}
