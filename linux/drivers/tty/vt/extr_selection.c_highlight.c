
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int invert_screen (int ,int const,int const,int) ;
 int sel_cons ;

__attribute__((used)) static inline void highlight(const int s, const int e)
{
 invert_screen(sel_cons, s, e-s+2, 1);
}
