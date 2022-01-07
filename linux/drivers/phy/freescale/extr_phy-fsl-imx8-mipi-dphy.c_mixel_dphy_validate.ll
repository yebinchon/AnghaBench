; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%union.phy_configure_opts = type { i32 }
%struct.mixel_dphy_cfg = type { i32 }

@PHY_MODE_MIPI_DPHY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)* @mixel_dphy_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixel_dphy_validate(%struct.phy* %0, i32 %1, i32 %2, %union.phy_configure_opts* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.phy_configure_opts*, align 8
  %10 = alloca %struct.mixel_dphy_cfg, align 4
  store %struct.phy* %0, %struct.phy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.phy_configure_opts* %3, %union.phy_configure_opts** %9, align 8
  %11 = bitcast %struct.mixel_dphy_cfg* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PHY_MODE_MIPI_DPHY, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %4
  %19 = load %struct.phy*, %struct.phy** %6, align 8
  %20 = load %union.phy_configure_opts*, %union.phy_configure_opts** %9, align 8
  %21 = bitcast %union.phy_configure_opts* %20 to i32*
  %22 = call i32 @mixel_dphy_config_from_opts(%struct.phy* %19, i32* %21, %struct.mixel_dphy_cfg* %10)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mixel_dphy_config_from_opts(%struct.phy*, i32*, %struct.mixel_dphy_cfg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
