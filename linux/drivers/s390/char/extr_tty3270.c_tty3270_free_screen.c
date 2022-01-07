
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270_line {struct tty3270_line* cells; } ;


 int kfree (struct tty3270_line*) ;

__attribute__((used)) static void
tty3270_free_screen(struct tty3270_line *screen, unsigned int rows)
{
 int lines;

 for (lines = 0; lines < rows - 2; lines++)
  kfree(screen[lines].cells);
 kfree(screen);
}
