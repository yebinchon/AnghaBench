
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_vhub_dev {int * epns; } ;


 unsigned int AST_VHUB_NUM_GEN_EPs ;
 int ESHUTDOWN ;
 int ast_vhub_nuke (int ,int ) ;

__attribute__((used)) static void ast_vhub_dev_nuke(struct ast_vhub_dev *d)
{
 unsigned int i;

 for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {
  if (!d->epns[i])
   continue;
  ast_vhub_nuke(d->epns[i], -ESHUTDOWN);
 }
}
