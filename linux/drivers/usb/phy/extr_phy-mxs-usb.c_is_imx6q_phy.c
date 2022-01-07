
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_phy {int * data; } ;


 int imx6q_phy_data ;

__attribute__((used)) static inline bool is_imx6q_phy(struct mxs_phy *mxs_phy)
{
 return mxs_phy->data == &imx6q_phy_data;
}
