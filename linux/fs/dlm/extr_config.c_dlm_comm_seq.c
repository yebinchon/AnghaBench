
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_comm {int seq; } ;


 int EEXIST ;
 struct dlm_comm* get_comm (int) ;
 int put_comm (struct dlm_comm*) ;

int dlm_comm_seq(int nodeid, uint32_t *seq)
{
 struct dlm_comm *cm = get_comm(nodeid);
 if (!cm)
  return -EEXIST;
 *seq = cm->seq;
 put_comm(cm);
 return 0;
}
