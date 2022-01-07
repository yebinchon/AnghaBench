; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%union.phy_configure_opts = type { i32 }
%struct.cdns_dphy = type { i32 }
%struct.cdns_dphy_cfg = type { i32 }

@DPHY_CLK_CFG_LEFT_DRIVES_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, %union.phy_configure_opts*)* @cdns_dphy_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dphy_configure(%struct.phy* %0, %union.phy_configure_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy*, align 8
  %5 = alloca %union.phy_configure_opts*, align 8
  %6 = alloca %struct.cdns_dphy*, align 8
  %7 = alloca %struct.cdns_dphy_cfg, align 4
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %4, align 8
  store %union.phy_configure_opts* %1, %union.phy_configure_opts** %5, align 8
  %9 = load %struct.phy*, %struct.phy** %4, align 8
  %10 = call %struct.cdns_dphy* @phy_get_drvdata(%struct.phy* %9)
  store %struct.cdns_dphy* %10, %struct.cdns_dphy** %6, align 8
  %11 = bitcast %struct.cdns_dphy_cfg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.phy*, %struct.phy** %4, align 8
  %13 = load %union.phy_configure_opts*, %union.phy_configure_opts** %5, align 8
  %14 = bitcast %union.phy_configure_opts* %13 to i32*
  %15 = call i32 @cdns_dphy_config_from_opts(%struct.phy* %12, i32* %14, %struct.cdns_dphy_cfg* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.cdns_dphy*, %struct.cdns_dphy** %6, align 8
  %22 = call i32 @cdns_dphy_setup_psm(%struct.cdns_dphy* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.cdns_dphy*, %struct.cdns_dphy** %6, align 8
  %29 = load i32, i32* @DPHY_CLK_CFG_LEFT_DRIVES_LEFT, align 4
  %30 = call i32 @cdns_dphy_set_clk_lane_cfg(%struct.cdns_dphy* %28, i32 %29)
  %31 = load %struct.cdns_dphy*, %struct.cdns_dphy** %6, align 8
  %32 = call i32 @cdns_dphy_set_pll_cfg(%struct.cdns_dphy* %31, %struct.cdns_dphy_cfg* %7)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %25, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.cdns_dphy* @phy_get_drvdata(%struct.phy*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cdns_dphy_config_from_opts(%struct.phy*, i32*, %struct.cdns_dphy_cfg*) #1

declare dso_local i32 @cdns_dphy_setup_psm(%struct.cdns_dphy*) #1

declare dso_local i32 @cdns_dphy_set_clk_lane_cfg(%struct.cdns_dphy*, i32) #1

declare dso_local i32 @cdns_dphy_set_pll_cfg(%struct.cdns_dphy*, %struct.cdns_dphy_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
