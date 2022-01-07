
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct acm* driver_data; } ;
struct acm {int flags; } ;


 int ACM_THROTTLED ;
 int GFP_KERNEL ;
 int acm_submit_read_urbs (struct acm*,int ) ;
 int clear_bit (int ,int *) ;
 int smp_mb () ;

__attribute__((used)) static void acm_tty_unthrottle(struct tty_struct *tty)
{
 struct acm *acm = tty->driver_data;

 clear_bit(ACM_THROTTLED, &acm->flags);


 smp_mb();

 acm_submit_read_urbs(acm, GFP_KERNEL);
}
