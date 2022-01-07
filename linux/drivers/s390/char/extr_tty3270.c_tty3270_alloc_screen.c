
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270_line {struct tty3270_line* cells; } ;
struct tty3270_cell {int dummy; } ;


 int ENOMEM ;
 struct tty3270_line* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (struct tty3270_line*) ;
 void* kzalloc (unsigned long,int ) ;

__attribute__((used)) static struct tty3270_line *
tty3270_alloc_screen(unsigned int rows, unsigned int cols)
{
 struct tty3270_line *screen;
 unsigned long size;
 int lines;

 size = sizeof(struct tty3270_line) * (rows - 2);
 screen = kzalloc(size, GFP_KERNEL);
 if (!screen)
  goto out_err;
 for (lines = 0; lines < rows - 2; lines++) {
  size = sizeof(struct tty3270_cell) * cols;
  screen[lines].cells = kzalloc(size, GFP_KERNEL);
  if (!screen[lines].cells)
   goto out_screen;
 }
 return screen;
out_screen:
 while (lines--)
  kfree(screen[lines].cells);
 kfree(screen);
out_err:
 return ERR_PTR(-ENOMEM);
}
