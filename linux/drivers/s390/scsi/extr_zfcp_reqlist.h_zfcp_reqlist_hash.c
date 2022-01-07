
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ZFCP_REQ_LIST_BUCKETS ;

__attribute__((used)) static inline int zfcp_reqlist_hash(unsigned long req_id)
{
 return req_id % ZFCP_REQ_LIST_BUCKETS;
}
