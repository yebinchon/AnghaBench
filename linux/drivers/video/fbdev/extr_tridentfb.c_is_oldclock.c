
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CYBER9320 ;
 int TGUI9440 ;
 int TGUI9660 ;

__attribute__((used)) static inline int is_oldclock(int id)
{
 return (id == TGUI9440) ||
  (id == TGUI9660) ||
  (id == CYBER9320);
}
