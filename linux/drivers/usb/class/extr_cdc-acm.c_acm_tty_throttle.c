
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {int flags; } ;


 int ACM_THROTTLED ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void acm_tty_throttle(struct tty_struct *tty)
{
 struct acm *acm = tty->driver_data;

 set_bit(ACM_THROTTLED, &acm->flags);
}
