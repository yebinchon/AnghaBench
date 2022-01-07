
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int dev; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct omap8250_priv {int habit; } ;


 int OMAP_UART_LEGACY_MVR_MAJ_MASK ;
 int OMAP_UART_LEGACY_MVR_MAJ_SHIFT ;
 int OMAP_UART_LEGACY_MVR_MIN_MASK ;
 int OMAP_UART_MVR_MAJ_MASK ;
 int OMAP_UART_MVR_MAJ_SHIFT ;
 int OMAP_UART_MVR_MIN_MASK ;
 int OMAP_UART_MVR_SCHEME_SHIFT ;



 int OMAP_UART_WER_HAS_TX_WAKEUP ;
 int UART_BUILD_REVISION (int,int) ;
 int UART_ERRATA_i202_MDR1_ACCESS ;
 int UART_OMAP_MVER ;
 int dev_warn (int ,char*) ;
 int uart_read (struct uart_8250_port*,int ) ;

__attribute__((used)) static void omap_serial_fill_features_erratas(struct uart_8250_port *up,
           struct omap8250_priv *priv)
{
 u32 mvr, scheme;
 u16 revision, major, minor;

 mvr = uart_read(up, UART_OMAP_MVER);


 scheme = mvr >> OMAP_UART_MVR_SCHEME_SHIFT;

 switch (scheme) {
 case 0:

  major = (mvr & OMAP_UART_LEGACY_MVR_MAJ_MASK) >>
   OMAP_UART_LEGACY_MVR_MAJ_SHIFT;
  minor = (mvr & OMAP_UART_LEGACY_MVR_MIN_MASK);
  break;
 case 1:


  major = (mvr & OMAP_UART_MVR_MAJ_MASK) >>
   OMAP_UART_MVR_MAJ_SHIFT;
  minor = (mvr & OMAP_UART_MVR_MIN_MASK);
  break;
 default:
  dev_warn(up->port.dev,
    "Unknown revision, defaulting to highest\n");

  major = 0xff;
  minor = 0xff;
 }

 revision = UART_BUILD_REVISION(major, minor);

 switch (revision) {
 case 130:
  priv->habit |= UART_ERRATA_i202_MDR1_ACCESS;
  break;
 case 129:
  priv->habit |= UART_ERRATA_i202_MDR1_ACCESS |
    OMAP_UART_WER_HAS_TX_WAKEUP;
  break;
 case 128:
  priv->habit |= UART_ERRATA_i202_MDR1_ACCESS |
   OMAP_UART_WER_HAS_TX_WAKEUP;
  break;
 default:
  break;
 }
}
