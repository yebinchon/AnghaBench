
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct yenta_socket {int dummy; } ;


 int CB_16BITCARD ;
 int CB_3VCARD ;
 int CB_5VCARD ;
 int CB_BADVCCREQ ;
 int CB_CBCARD ;
 int CB_CDETECT1 ;
 int CB_CDETECT2 ;
 int CB_CVSTEST ;
 int CB_NOTACARD ;
 int CB_SOCKET_FORCE ;
 int CB_SOCKET_STATE ;
 int CB_XVCARD ;
 int CB_YVCARD ;
 int cb_readl (struct yenta_socket*,int ) ;
 int cb_writel (struct yenta_socket*,int ,int ) ;

__attribute__((used)) static void yenta_interrogate(struct yenta_socket *socket)
{
 u32 state;

 state = cb_readl(socket, CB_SOCKET_STATE);
 if (!(state & (CB_5VCARD | CB_3VCARD | CB_XVCARD | CB_YVCARD)) ||
     (state & (CB_CDETECT1 | CB_CDETECT2 | CB_NOTACARD | CB_BADVCCREQ)) ||
     ((state & (CB_16BITCARD | CB_CBCARD)) == (CB_16BITCARD | CB_CBCARD)))
  cb_writel(socket, CB_SOCKET_FORCE, CB_CVSTEST);
}
