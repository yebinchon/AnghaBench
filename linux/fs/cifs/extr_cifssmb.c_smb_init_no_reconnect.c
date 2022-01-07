
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_tcon {scalar_t__ need_reconnect; TYPE_1__* ses; } ;
struct TYPE_2__ {scalar_t__ need_reconnect; } ;


 int EHOSTDOWN ;
 int __smb_init (int,int,struct cifs_tcon*,void**,void**) ;

__attribute__((used)) static int
smb_init_no_reconnect(int smb_command, int wct, struct cifs_tcon *tcon,
   void **request_buf, void **response_buf)
{
 if (tcon->ses->need_reconnect || tcon->need_reconnect)
  return -EHOSTDOWN;

 return __smb_init(smb_command, wct, tcon, request_buf, response_buf);
}
