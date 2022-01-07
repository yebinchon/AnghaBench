
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_response {scalar_t__ packet; } ;



__attribute__((used)) static inline void *smbd_response_payload(struct smbd_response *response)
{
 return (void *)response->packet;
}
