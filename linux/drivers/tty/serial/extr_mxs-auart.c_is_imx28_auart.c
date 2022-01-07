
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_auart_port {scalar_t__ devtype; } ;


 scalar_t__ IMX28_AUART ;

__attribute__((used)) static inline int is_imx28_auart(struct mxs_auart_port *s)
{
 return s->devtype == IMX28_AUART;
}
