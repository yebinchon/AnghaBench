
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int sas_host; } ;


 int hpsa_free_sas_node (int ) ;

__attribute__((used)) static void hpsa_delete_sas_host(struct ctlr_info *h)
{
 hpsa_free_sas_node(h->sas_host);
}
