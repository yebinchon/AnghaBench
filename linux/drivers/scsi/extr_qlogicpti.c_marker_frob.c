
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entry_cnt; int entry_type; } ;
struct Marker_Entry {scalar_t__ rsvd; int modifier; TYPE_1__ hdr; } ;
struct Command_Entry {int dummy; } ;


 int ENTRY_MARKER ;
 int SYNC_ALL ;
 int memset (struct Marker_Entry*,int ,int) ;

__attribute__((used)) static inline void marker_frob(struct Command_Entry *cmd)
{
 struct Marker_Entry *marker = (struct Marker_Entry *) cmd;

 memset(marker, 0, sizeof(struct Marker_Entry));
 marker->hdr.entry_cnt = 1;
 marker->hdr.entry_type = ENTRY_MARKER;
 marker->modifier = SYNC_ALL;
 marker->rsvd = 0;
}
