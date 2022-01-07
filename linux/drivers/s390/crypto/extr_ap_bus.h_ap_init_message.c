
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_message {int dummy; } ;


 int memset (struct ap_message*,int ,int) ;

__attribute__((used)) static inline void ap_init_message(struct ap_message *ap_msg)
{
 memset(ap_msg, 0, sizeof(*ap_msg));
}
