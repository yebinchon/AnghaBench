
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ifx_spi_device* driver_data; } ;
struct ifx_spi_device {int signal_state; } ;


 int IFX_SPI_CTS ;
 int IFX_SPI_DCD ;
 int IFX_SPI_DSR ;
 int IFX_SPI_DTR ;
 int IFX_SPI_RI ;
 int IFX_SPI_RTS ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RNG ;
 unsigned int TIOCM_RTS ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ifx_spi_tiocmget(struct tty_struct *tty)
{
 unsigned int value;
 struct ifx_spi_device *ifx_dev = tty->driver_data;

 value =
 (test_bit(IFX_SPI_RTS, &ifx_dev->signal_state) ? TIOCM_RTS : 0) |
 (test_bit(IFX_SPI_DTR, &ifx_dev->signal_state) ? TIOCM_DTR : 0) |
 (test_bit(IFX_SPI_CTS, &ifx_dev->signal_state) ? TIOCM_CTS : 0) |
 (test_bit(IFX_SPI_DSR, &ifx_dev->signal_state) ? TIOCM_DSR : 0) |
 (test_bit(IFX_SPI_DCD, &ifx_dev->signal_state) ? TIOCM_CAR : 0) |
 (test_bit(IFX_SPI_RI, &ifx_dev->signal_state) ? TIOCM_RNG : 0);
 return value;
}
