
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int uio_class ;
 int uio_class_registered ;
 int uio_major_cleanup () ;

__attribute__((used)) static void release_uio_class(void)
{
 uio_class_registered = 0;
 class_unregister(&uio_class);
 uio_major_cleanup();
}
