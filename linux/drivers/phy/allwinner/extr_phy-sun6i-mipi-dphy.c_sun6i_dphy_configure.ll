; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun6i-mipi-dphy.c_sun6i_dphy_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun6i-mipi-dphy.c_sun6i_dphy_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%union.phy_configure_opts = type { i32 }
%struct.sun6i_dphy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, %union.phy_configure_opts*)* @sun6i_dphy_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dphy_configure(%struct.phy* %0, %union.phy_configure_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy*, align 8
  %5 = alloca %union.phy_configure_opts*, align 8
  %6 = alloca %struct.sun6i_dphy*, align 8
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %4, align 8
  store %union.phy_configure_opts* %1, %union.phy_configure_opts** %5, align 8
  %8 = load %struct.phy*, %struct.phy** %4, align 8
  %9 = call %struct.sun6i_dphy* @phy_get_drvdata(%struct.phy* %8)
  store %struct.sun6i_dphy* %9, %struct.sun6i_dphy** %6, align 8
  %10 = load %union.phy_configure_opts*, %union.phy_configure_opts** %5, align 8
  %11 = bitcast %union.phy_configure_opts* %10 to i32*
  %12 = call i32 @phy_mipi_dphy_config_validate(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %6, align 8
  %19 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %18, i32 0, i32 0
  %20 = load %union.phy_configure_opts*, %union.phy_configure_opts** %5, align 8
  %21 = call i32 @memcpy(i32* %19, %union.phy_configure_opts* %20, i32 4)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.sun6i_dphy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @phy_mipi_dphy_config_validate(i32*) #1

declare dso_local i32 @memcpy(i32*, %union.phy_configure_opts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
