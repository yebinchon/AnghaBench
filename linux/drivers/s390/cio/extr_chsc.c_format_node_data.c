
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_descriptor {scalar_t__ validity; int byte0; int params; int tag; int seq; int plant; int manufacturer; int model; int type; } ;


 scalar_t__ ND_VALIDITY_VALID ;
 scalar_t__ NODEID_LEN ;
 scalar_t__ PARAMS_LEN ;
 int memset (char*,int ,scalar_t__) ;
 int snprintf (char*,scalar_t__,char*,int,int) ;
 int sprintf (char*,char*,int) ;
 char* store_ebcdic (char*,int ,int,char) ;
 int strncpy (char*,char*,scalar_t__) ;

__attribute__((used)) static void format_node_data(char *params, char *id, struct node_descriptor *nd)
{
 memset(params, 0, PARAMS_LEN);
 memset(id, 0, NODEID_LEN);

 if (nd->validity != ND_VALIDITY_VALID) {
  strncpy(params, "n/a", PARAMS_LEN - 1);
  strncpy(id, "n/a", NODEID_LEN - 1);
  return;
 }


 snprintf(params, PARAMS_LEN, "%02x,%06x", nd->byte0, nd->params);

 id = store_ebcdic(id, nd->type, sizeof(nd->type), '/');
 id = store_ebcdic(id, nd->model, sizeof(nd->model), ',');
 id = store_ebcdic(id, nd->manufacturer, sizeof(nd->manufacturer), '.');
 id = store_ebcdic(id, nd->plant, sizeof(nd->plant), 0);
 id = store_ebcdic(id, nd->seq, sizeof(nd->seq), ',');
 sprintf(id, "%04X", nd->tag);
}
