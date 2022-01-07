
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_phy_desc {int data; } ;
struct phy {int dummy; } ;
struct exynos_mipi_video_phy {int dummy; } ;


 int __set_phy_state (int ,struct exynos_mipi_video_phy*,int ) ;
 struct video_phy_desc* phy_get_drvdata (struct phy*) ;
 struct exynos_mipi_video_phy* to_mipi_video_phy (struct video_phy_desc*) ;

__attribute__((used)) static int exynos_mipi_video_phy_power_off(struct phy *phy)
{
 struct video_phy_desc *phy_desc = phy_get_drvdata(phy);
 struct exynos_mipi_video_phy *state = to_mipi_video_phy(phy_desc);

 return __set_phy_state(phy_desc->data, state, 0);
}
