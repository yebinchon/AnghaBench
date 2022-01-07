
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBM_FS3270_MAJOR ;
 int MKDEV (int ,int) ;
 int __register_chrdev (int ,int,int,char*,int *) ;
 int class3270 ;
 int device_create (int ,int *,int ,int *,char*,int) ;
 int fs3270_fops ;

__attribute__((used)) static void fs3270_create_cb(int minor)
{
 __register_chrdev(IBM_FS3270_MAJOR, minor, 1, "tub", &fs3270_fops);
 device_create(class3270, ((void*)0), MKDEV(IBM_FS3270_MAJOR, minor),
        ((void*)0), "3270/tub%d", minor);
}
