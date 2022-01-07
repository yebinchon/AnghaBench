
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_struct {int dummy; } ;


 struct sti_struct* default_sti ;
 int default_sti_path ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void sticore_check_for_default_sti(struct sti_struct *sti, char *path)
{
 if (strcmp (path, default_sti_path) == 0)
  default_sti = sti;
}
