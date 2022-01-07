
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int CYBERJACK_LOCAL_BUF_SIZE ;

__attribute__((used)) static int cyberjack_write_room(struct tty_struct *tty)
{

 return CYBERJACK_LOCAL_BUF_SIZE;
}
