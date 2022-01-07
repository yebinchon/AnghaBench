
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;
struct db1x_pcmcia_sock {scalar_t__ board_type; int nr; } ;


 int BCSR_PCMCIA ;
 int BCSR_STATUS ;
 scalar_t__ BOARD_TYPE_DB1300 ;
 scalar_t__ BOARD_TYPE_PB1100 ;
 scalar_t__ GET_RESET (unsigned short,int ) ;
 scalar_t__ GET_VCC (unsigned short,int ) ;
 int GET_VS (unsigned short,int ) ;
 unsigned int SS_3VCARD ;
 unsigned int SS_DETECT ;
 unsigned int SS_POWERON ;
 unsigned int SS_READY ;
 unsigned int SS_RESET ;
 unsigned int SS_XVCARD ;
 unsigned short bcsr_read (int ) ;
 scalar_t__ db1x_card_inserted (struct db1x_pcmcia_sock*) ;
 struct db1x_pcmcia_sock* to_db1x_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int db1x_pcmcia_get_status(struct pcmcia_socket *skt,
      unsigned int *value)
{
 struct db1x_pcmcia_sock *sock = to_db1x_socket(skt);
 unsigned short cr, sr;
 unsigned int status;

 status = db1x_card_inserted(sock) ? SS_DETECT : 0;

 cr = bcsr_read(BCSR_PCMCIA);
 sr = bcsr_read(BCSR_STATUS);


 if (sock->board_type == BOARD_TYPE_PB1100)
  sr >>= 4;


 switch (GET_VS(sr, sock->nr)) {
 case 0:
 case 2:
  status |= SS_3VCARD;
 case 3:
  break;
 default:
  status |= SS_XVCARD;
 }


 status |= GET_VCC(cr, sock->nr) ? SS_POWERON : 0;


 if ((sock->board_type == BOARD_TYPE_DB1300) && (status & SS_DETECT))
  status = SS_POWERON | SS_3VCARD | SS_DETECT;


 status |= (GET_RESET(cr, sock->nr)) ? SS_READY : SS_RESET;

 *value = status;

 return 0;
}
