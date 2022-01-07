
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_screen {void** lines; } ;
typedef int char32_t ;


 int GFP_KERNEL ;
 void* kmalloc (unsigned int,int ) ;

__attribute__((used)) static struct uni_screen *vc_uniscr_alloc(unsigned int cols, unsigned int rows)
{
 struct uni_screen *uniscr;
 void *p;
 unsigned int memsize, i;


 memsize = cols * rows * sizeof(char32_t);
 memsize += rows * sizeof(char32_t *);
 p = kmalloc(memsize, GFP_KERNEL);
 if (!p)
  return ((void*)0);


 uniscr = p;
 p = uniscr->lines + rows;
 for (i = 0; i < rows; i++) {
  uniscr->lines[i] = p;
  p += cols * sizeof(char32_t);
 }
 return uniscr;
}
