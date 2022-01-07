
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int mvebu_comphy_get_mode (int,int,int,int,int) ;

__attribute__((used)) static inline int mvebu_comphy_get_mux(int lane, int port,
           enum phy_mode mode, int submode)
{
 return mvebu_comphy_get_mode(0, lane, port, mode, submode);
}
