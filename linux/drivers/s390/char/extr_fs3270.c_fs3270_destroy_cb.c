
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBM_FS3270_MAJOR ;
 int MKDEV (int ,int) ;
 int __unregister_chrdev (int ,int,int,char*) ;
 int class3270 ;
 int device_destroy (int ,int ) ;

__attribute__((used)) static void fs3270_destroy_cb(int minor)
{
 device_destroy(class3270, MKDEV(IBM_FS3270_MAJOR, minor));
 __unregister_chrdev(IBM_FS3270_MAJOR, minor, 1, "tub");
}
