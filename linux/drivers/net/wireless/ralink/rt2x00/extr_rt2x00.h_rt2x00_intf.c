
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intf; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;
typedef enum rt2x00_chip_intf { ____Placeholder_rt2x00_chip_intf } rt2x00_chip_intf ;



__attribute__((used)) static inline bool rt2x00_intf(struct rt2x00_dev *rt2x00dev,
          enum rt2x00_chip_intf intf)
{
 return (rt2x00dev->chip.intf == intf);
}
