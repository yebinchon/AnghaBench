
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifx_spi_device {int tty_port; } ;


 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_string (int *,unsigned char*,size_t) ;

__attribute__((used)) static void ifx_spi_insert_flip_string(struct ifx_spi_device *ifx_dev,
        unsigned char *chars, size_t size)
{
 tty_insert_flip_string(&ifx_dev->tty_port, chars, size);
 tty_flip_buffer_push(&ifx_dev->tty_port);
}
