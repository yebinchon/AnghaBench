
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct pcmcia_socket {unsigned int sock; } ;


 unsigned int CARD_MAX_SLOTS ;
 int CARD_VOLTAGE_SENSE ;
 int EINVAL ;
 int I365_CS_BVD1 ;
 int I365_CS_BVD2 ;
 int I365_CS_DETECT ;
 int I365_CS_POWERON ;
 int I365_CS_READY ;
 int I365_CS_STSCHG ;
 int I365_CS_WRPROT ;
 int I365_INTCTL ;
 int I365_PC_IOCARD ;
 int I365_STATUS ;
 int SS_3VCARD ;
 int SS_BATDEAD ;
 int SS_BATWARN ;
 int SS_DETECT ;
 int SS_POWERON ;
 int SS_READY ;
 int SS_STSCHG ;
 int SS_WRPROT ;
 int SS_XVCARD ;



 int exca_read_byte (unsigned int,int ) ;

__attribute__((used)) static int pccard_get_status(struct pcmcia_socket *sock, u_int *value)
{
 unsigned int slot;
 uint8_t status, sense;
 u_int val = 0;

 if (sock == ((void*)0) || sock->sock >= CARD_MAX_SLOTS || value == ((void*)0))
  return -EINVAL;

 slot = sock->sock;

 status = exca_read_byte(slot, I365_STATUS);
 if (exca_read_byte(slot, I365_INTCTL) & I365_PC_IOCARD) {
  if (status & I365_CS_STSCHG)
   val |= SS_STSCHG;
 } else {
  if (!(status & I365_CS_BVD1))
   val |= SS_BATDEAD;
  else if ((status & (I365_CS_BVD1 | I365_CS_BVD2)) == I365_CS_BVD1)
   val |= SS_BATWARN;
 }
 if ((status & I365_CS_DETECT) == I365_CS_DETECT)
  val |= SS_DETECT;
 if (status & I365_CS_WRPROT)
  val |= SS_WRPROT;
 if (status & I365_CS_READY)
  val |= SS_READY;
 if (status & I365_CS_POWERON)
  val |= SS_POWERON;

 sense = exca_read_byte(slot, CARD_VOLTAGE_SENSE);
 switch (sense) {
 case 130:
  val |= SS_3VCARD | SS_XVCARD;
  break;
 case 128:
  val |= SS_XVCARD;
  break;
 case 129:
  val |= SS_3VCARD;
  break;
 default:

  break;
 }

 *value = val;

 return 0;
}
