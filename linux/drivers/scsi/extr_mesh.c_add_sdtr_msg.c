
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {int n_msgout; int* msgout; int conn_tgt; } ;


 scalar_t__ ALLOW_SYNC (int ) ;
 int EXTENDED_MESSAGE ;
 int EXTENDED_SDTR ;
 int mesh_sync_offset ;
 int mesh_sync_period ;

__attribute__((used)) static inline void add_sdtr_msg(struct mesh_state *ms)
{
 int i = ms->n_msgout;

 ms->msgout[i] = EXTENDED_MESSAGE;
 ms->msgout[i+1] = 3;
 ms->msgout[i+2] = EXTENDED_SDTR;
 ms->msgout[i+3] = mesh_sync_period/4;
 ms->msgout[i+4] = (ALLOW_SYNC(ms->conn_tgt)? mesh_sync_offset: 0);
 ms->n_msgout = i + 5;
}
