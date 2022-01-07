
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpuart_port {scalar_t__ devtype; } ;


 scalar_t__ IMX8QXP_LPUART ;

__attribute__((used)) static inline bool is_imx8qxp_lpuart(struct lpuart_port *sport)
{
 return sport->devtype == IMX8QXP_LPUART;
}
