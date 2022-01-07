
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct scatterlist {int dummy; } ;
struct iscsi_cmd {size_t kmapped_nents; struct scatterlist* first_data_sg; } ;


 int kunmap (int ) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static void iscsit_unmap_iovec(struct iscsi_cmd *cmd)
{
 u32 i;
 struct scatterlist *sg;

 sg = cmd->first_data_sg;

 for (i = 0; i < cmd->kmapped_nents; i++)
  kunmap(sg_page(&sg[i]));
}
