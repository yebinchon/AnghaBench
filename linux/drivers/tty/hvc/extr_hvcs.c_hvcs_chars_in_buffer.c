
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct hvcs_struct* driver_data; } ;
struct hvcs_struct {int chars_in_buffer; } ;



__attribute__((used)) static int hvcs_chars_in_buffer(struct tty_struct *tty)
{
 struct hvcs_struct *hvcsd = tty->driver_data;

 return hvcsd->chars_in_buffer;
}
