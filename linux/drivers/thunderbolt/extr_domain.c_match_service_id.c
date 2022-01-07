
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_service_id {int match_flags; scalar_t__ protocol_id; scalar_t__ protocol_version; scalar_t__ protocol_revision; int protocol_key; } ;
struct tb_service {scalar_t__ prtcid; scalar_t__ prtcvers; scalar_t__ prtcrevs; int key; } ;


 int TBSVC_MATCH_PROTOCOL_ID ;
 int TBSVC_MATCH_PROTOCOL_KEY ;
 int TBSVC_MATCH_PROTOCOL_VERSION ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool match_service_id(const struct tb_service_id *id,
        const struct tb_service *svc)
{
 if (id->match_flags & TBSVC_MATCH_PROTOCOL_KEY) {
  if (strcmp(id->protocol_key, svc->key))
   return 0;
 }

 if (id->match_flags & TBSVC_MATCH_PROTOCOL_ID) {
  if (id->protocol_id != svc->prtcid)
   return 0;
 }

 if (id->match_flags & TBSVC_MATCH_PROTOCOL_VERSION) {
  if (id->protocol_version != svc->prtcvers)
   return 0;
 }

 if (id->match_flags & TBSVC_MATCH_PROTOCOL_VERSION) {
  if (id->protocol_revision != svc->prtcrevs)
   return 0;
 }

 return 1;
}
