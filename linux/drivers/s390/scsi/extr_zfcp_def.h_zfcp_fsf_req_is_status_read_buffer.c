
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_req {int * qtcb; } ;



__attribute__((used)) static inline bool zfcp_fsf_req_is_status_read_buffer(struct zfcp_fsf_req *req)
{
 return req->qtcb == ((void*)0);
}
