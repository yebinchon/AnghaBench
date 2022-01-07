
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nd_label_id {char* id; } ;


 int ND_LABEL_ID_SIZE ;
 int NSLABEL_FLAG_LOCAL ;
 int snprintf (char*,int ,char*,char*,int *) ;

char *nd_label_gen_id(struct nd_label_id *label_id, u8 *uuid, u32 flags)
{
 if (!label_id || !uuid)
  return ((void*)0);
 snprintf(label_id->id, ND_LABEL_ID_SIZE, "%s-%pUb",
   flags & NSLABEL_FLAG_LOCAL ? "blk" : "pmem", uuid);
 return label_id->id;
}
