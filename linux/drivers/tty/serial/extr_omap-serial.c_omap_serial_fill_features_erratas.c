
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int regshift; scalar_t__ membase; } ;
struct uart_omap_port {int errata; int features; int name; int dev; TYPE_1__ port; } ;


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
 int UART_ERRATA_i291_DMA_FORCEIDLE ;
 int UART_OMAP_MVER ;
 int dev_warn (int ,char*,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void omap_serial_fill_features_erratas(struct uart_omap_port *up)
{
 u32 mvr, scheme;
 u16 revision, major, minor;

 mvr = readl(up->port.membase + (UART_OMAP_MVER << up->port.regshift));


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
  dev_warn(up->dev,
   "Unknown %s revision, defaulting to highest\n",
   up->name);

  major = 0xff;
  minor = 0xff;
 }


 revision = UART_BUILD_REVISION(major, minor);

 switch (revision) {
 case 130:
  up->errata |= (UART_ERRATA_i202_MDR1_ACCESS |
    UART_ERRATA_i291_DMA_FORCEIDLE);
  break;
 case 129:
  up->errata |= (UART_ERRATA_i202_MDR1_ACCESS |
    UART_ERRATA_i291_DMA_FORCEIDLE);
  up->features |= OMAP_UART_WER_HAS_TX_WAKEUP;
  break;
 case 128:
  up->errata |= UART_ERRATA_i202_MDR1_ACCESS;
  up->features |= OMAP_UART_WER_HAS_TX_WAKEUP;
  break;
 default:
  break;
 }
}
