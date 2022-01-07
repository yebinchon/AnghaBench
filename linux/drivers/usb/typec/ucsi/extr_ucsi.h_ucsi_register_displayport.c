
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_connector {int dummy; } ;
struct typec_altmode_desc {int dummy; } ;
struct typec_altmode {int dummy; } ;



__attribute__((used)) static inline struct typec_altmode *
ucsi_register_displayport(struct ucsi_connector *con,
     bool override, int offset,
     struct typec_altmode_desc *desc)
{
 return ((void*)0);
}
