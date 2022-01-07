; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_ns2_drd_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_ns2_drd_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ns2_phy_data = type { i64, %struct.ns2_phy_driver* }
%struct.ns2_phy_driver = type { i64 }

@ICFG_FSM_CTRL = common dso_local global i64 0, align 8
@EVT_HOST = common dso_local global i64 0, align 8
@DRD_DEVICE_MODE = common dso_local global i32 0, align 4
@DRD_HOST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ns2_drd_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_drd_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.ns2_phy_data*, align 8
  %4 = alloca %struct.ns2_phy_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = call %struct.ns2_phy_data* @phy_get_drvdata(%struct.phy* %6)
  store %struct.ns2_phy_data* %7, %struct.ns2_phy_data** %3, align 8
  %8 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %3, align 8
  %9 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %8, i32 0, i32 1
  %10 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %9, align 8
  store %struct.ns2_phy_driver* %10, %struct.ns2_phy_driver** %4, align 8
  %11 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %4, align 8
  %12 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ICFG_FSM_CTRL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %3, align 8
  %18 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EVT_HOST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @DRD_DEVICE_MODE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @DRD_HOST_MODE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load i32, i32* @DRD_HOST_MODE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @DRD_DEVICE_MODE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %4, align 8
  %41 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ICFG_FSM_CTRL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
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
