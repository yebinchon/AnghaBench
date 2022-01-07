
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_id_ctrl {int fr; int mn; int vid; } ;
struct nvme_core_quirk_entry {scalar_t__ vid; int fr; int mn; } ;


 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ string_matches (int ,int ,int) ;

__attribute__((used)) static bool quirk_matches(const struct nvme_id_ctrl *id,
     const struct nvme_core_quirk_entry *q)
{
 return q->vid == le16_to_cpu(id->vid) &&
  string_matches(id->mn, q->mn, sizeof(id->mn)) &&
  string_matches(id->fr, q->fr, sizeof(id->fr));
}
