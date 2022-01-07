; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_config_from_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_config_from_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_configure_opts_mipi_dphy = type { i32 }
%struct.cdns_dphy_cfg = type { i32 }
%struct.cdns_dphy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, %struct.phy_configure_opts_mipi_dphy*, %struct.cdns_dphy_cfg*)* @cdns_dphy_config_from_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dphy_config_from_opts(%struct.phy* %0, %struct.phy_configure_opts_mipi_dphy* %1, %struct.cdns_dphy_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  %6 = alloca %struct.phy_configure_opts_mipi_dphy*, align 8
  %7 = alloca %struct.cdns_dphy_cfg*, align 8
  %8 = alloca %struct.cdns_dphy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %5, align 8
  store %struct.phy_configure_opts_mipi_dphy* %1, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  store %struct.cdns_dphy_cfg* %2, %struct.cdns_dphy_cfg** %7, align 8
  %11 = load %struct.phy*, %struct.phy** %5, align 8
  %12 = call %struct.cdns_dphy* @phy_get_drvdata(%struct.phy* %11)
  store %struct.cdns_dphy* %12, %struct.cdns_dphy** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %14 = call i32 @phy_mipi_dphy_config_validate(%struct.phy_configure_opts_mipi_dphy* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.cdns_dphy*, %struct.cdns_dphy** %8, align 8
  %21 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %22 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %23 = call i32 @cdns_dsi_get_dphy_pll_cfg(%struct.cdns_dphy* %20, %struct.cdns_dphy_cfg* %21, %struct.phy_configure_opts_mipi_dphy* %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %19
  %29 = load %struct.cdns_dphy*, %struct.cdns_dphy** %8, align 8
  %30 = call i32 @cdns_dphy_get_wakeup_time_ns(%struct.cdns_dphy* %29)
  %31 = sdiv i32 %30, 1000
  %32 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %6, align 8
  %33 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %26, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.cdns_dphy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @phy_mipi_dphy_config_validate(%struct.phy_configure_opts_mipi_dphy*) #1

declare dso_local i32 @cdns_dsi_get_dphy_pll_cfg(%struct.cdns_dphy*, %struct.cdns_dphy_cfg*, %struct.phy_configure_opts_mipi_dphy*, i32*) #1

declare dso_local i32 @cdns_dphy_get_wakeup_time_ns(%struct.cdns_dphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
