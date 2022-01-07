
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ifx_spi_device* driver_data; } ;
struct ifx_spi_device {int signal_state; } ;


 int IFX_SPI_DTR ;
 int IFX_SPI_RTS ;
 int IFX_SPI_UPDATE ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ifx_spi_tiocmset(struct tty_struct *tty,
       unsigned int set, unsigned int clear)
{
 struct ifx_spi_device *ifx_dev = tty->driver_data;

 if (set & TIOCM_RTS)
  set_bit(IFX_SPI_RTS, &ifx_dev->signal_state);
 if (set & TIOCM_DTR)
  set_bit(IFX_SPI_DTR, &ifx_dev->signal_state);
 if (clear & TIOCM_RTS)
  clear_bit(IFX_SPI_RTS, &ifx_dev->signal_state);
 if (clear & TIOCM_DTR)
  clear_bit(IFX_SPI_DTR, &ifx_dev->signal_state);

 set_bit(IFX_SPI_UPDATE, &ifx_dev->signal_state);
 return 0;
}
