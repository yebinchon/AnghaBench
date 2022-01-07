
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_elbc_gpcm {char* name; int shutdown; int init; int irq_handler; } ;


 int netx5152_init ;
 int netx5152_irq_handler ;
 int netx5152_shutdown ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void setup_periph(struct fsl_elbc_gpcm *priv,
       const char *type)
{
}
