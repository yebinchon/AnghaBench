
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcon_priv {int dummy; } ;


 int dcon_set_source (struct dcon_priv*,int) ;
 int flush_scheduled_work () ;

__attribute__((used)) static void dcon_set_source_sync(struct dcon_priv *dcon, int arg)
{
 dcon_set_source(dcon, arg);
 flush_scheduled_work();
}
