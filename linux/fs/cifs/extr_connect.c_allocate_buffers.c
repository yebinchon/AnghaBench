
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {char* bigbuf; char* smallbuf; scalar_t__ large_buf; } ;


 int HEADER_SIZE (struct TCP_Server_Info*) ;
 int VFS ;
 scalar_t__ cifs_buf_get () ;
 int cifs_server_dbg (int ,char*) ;
 scalar_t__ cifs_small_buf_get () ;
 int memset (char*,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static bool
allocate_buffers(struct TCP_Server_Info *server)
{
 if (!server->bigbuf) {
  server->bigbuf = (char *)cifs_buf_get();
  if (!server->bigbuf) {
   cifs_server_dbg(VFS, "No memory for large SMB response\n");
   msleep(3000);

   return 0;
  }
 } else if (server->large_buf) {

  memset(server->bigbuf, 0, HEADER_SIZE(server));
 }

 if (!server->smallbuf) {
  server->smallbuf = (char *)cifs_small_buf_get();
  if (!server->smallbuf) {
   cifs_server_dbg(VFS, "No memory for SMB response\n");
   msleep(1000);

   return 0;
  }

 } else {

  memset(server->smallbuf, 0, HEADER_SIZE(server));
 }

 return 1;
}
