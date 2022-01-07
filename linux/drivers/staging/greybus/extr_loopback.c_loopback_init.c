
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root; int lock; } ;


 int class_register (int *) ;
 int class_unregister (int *) ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_remove_recursive (int ) ;
 TYPE_1__ gb_dev ;
 int gb_loopback_driver ;
 int greybus_register (int *) ;
 int loopback_class ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int loopback_init(void)
{
 int retval;

 spin_lock_init(&gb_dev.lock);
 gb_dev.root = debugfs_create_dir("gb_loopback", ((void*)0));

 retval = class_register(&loopback_class);
 if (retval)
  goto err;

 retval = greybus_register(&gb_loopback_driver);
 if (retval)
  goto err_unregister;

 return 0;

err_unregister:
 class_unregister(&loopback_class);
err:
 debugfs_remove_recursive(gb_dev.root);
 return retval;
}
