
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_request {scalar_t__ packet; } ;



__attribute__((used)) static inline void *smbd_request_payload(struct smbd_request *request)
{
 return (void *)request->packet;
}
