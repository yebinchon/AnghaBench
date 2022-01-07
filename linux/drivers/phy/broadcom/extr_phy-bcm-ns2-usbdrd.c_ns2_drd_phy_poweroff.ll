; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_ns2_drd_phy_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_ns2_drd_phy_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ns2_phy_data = type { %struct.ns2_phy_driver* }
%struct.ns2_phy_driver = type { i64, i64 }

@AFE_CORERDY_VDDC = common dso_local global i32 0, align 4
@DRD_DEV_MODE = common dso_local global i32 0, align 4
@ICFG_FSM_CTRL = common dso_local global i64 0, align 8
@DRD_HOST_MODE = common dso_local global i32 0, align 4
@DRD_DEVICE_MODE = common dso_local global i32 0, align 4
@ICFG_OFF_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ns2_drd_phy_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_drd_phy_poweroff(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.ns2_phy_data*, align 8
  %4 = alloca %struct.ns2_phy_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = call %struct.ns2_phy_data* @phy_get_drvdata(%struct.phy* %6)
  store %struct.ns2_phy_data* %7, %struct.ns2_phy_data** %3, align 8
  %8 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %3, align 8
  %9 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %8, i32 0, i32 0
  %10 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %9, align 8
  store %struct.ns2_phy_driver* %10, %struct.ns2_phy_driver** %4, align 8
  %11 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %4, align 8
  %12 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @AFE_CORERDY_VDDC, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %4, align 8
  %21 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @writel(i32 %19, i64 %22)
  %24 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %4, align 8
  %25 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @DRD_DEV_MODE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %4, align 8
  %34 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @writel(i32 %32, i64 %35)
  %37 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %4, align 8
  %38 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ICFG_FSM_CTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @DRD_HOST_MODE, align 4
  %44 = load i32, i32* @DRD_DEVICE_MODE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ICFG_OFF_MODE, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %4, align 8
  %53 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ICFG_FSM_CTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  ret i32 0
}

declare dso_local %struct.ns2_phy_data* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
