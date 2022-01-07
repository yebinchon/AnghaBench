
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RAW3270_FIRSTMINOR ;
 int tty3270_driver ;
 int tty_unregister_device (int ,scalar_t__) ;

__attribute__((used)) static void tty3270_destroy_cb(int minor)
{
 tty_unregister_device(tty3270_driver, minor - RAW3270_FIRSTMINOR);
}
