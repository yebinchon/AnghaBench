
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct soc_pcmcia_socket {struct max1600* driver_data; scalar_t__ nr; TYPE_2__ socket; } ;
struct max1600 {int dummy; } ;


 int MAX1600_CHAN_A ;
 int MAX1600_CHAN_B ;
 int MAX1600_CODE_HIGH ;
 int max1600_init (int ,struct max1600**,int ,int ) ;

__attribute__((used)) static int lubbock_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 struct max1600 *m;
 int ret;

 ret = max1600_init(skt->socket.dev.parent, &m,
      skt->nr ? MAX1600_CHAN_B : MAX1600_CHAN_A,
      MAX1600_CODE_HIGH);
 if (ret == 0)
  skt->driver_data = m;

 return ret;
}
