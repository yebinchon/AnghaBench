
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_message {int private; int message; } ;


 int kzfree (int ) ;

__attribute__((used)) static inline void ap_release_message(struct ap_message *ap_msg)
{
 kzfree(ap_msg->message);
 kzfree(ap_msg->private);
}
