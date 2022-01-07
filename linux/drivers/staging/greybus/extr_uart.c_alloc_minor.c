
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_tty {int minor; } ;


 int GB_NUM_MINORS ;
 int GFP_KERNEL ;
 int idr_alloc (int *,struct gb_tty*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int table_lock ;
 int tty_minors ;

__attribute__((used)) static int alloc_minor(struct gb_tty *gb_tty)
{
 int minor;

 mutex_lock(&table_lock);
 minor = idr_alloc(&tty_minors, gb_tty, 0, GB_NUM_MINORS, GFP_KERNEL);
 mutex_unlock(&table_lock);
 if (minor >= 0)
  gb_tty->minor = minor;
 return minor;
}
