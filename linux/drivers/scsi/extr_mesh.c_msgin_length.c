
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {int n_msgin; int* msgin; } ;



__attribute__((used)) static inline int msgin_length(struct mesh_state *ms)
{
 int b, n;

 n = 1;
 if (ms->n_msgin > 0) {
  b = ms->msgin[0];
  if (b == 1) {

   n = ms->n_msgin < 2? 2: ms->msgin[1] + 2;
  } else if (0x20 <= b && b <= 0x2f) {

   n = 2;
  }
 }
 return n;
}
