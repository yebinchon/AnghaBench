; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_connect_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_connect_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns2_phy_driver = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ICFG_FSM_CTRL = common dso_local global i64 0, align 8
@DRD_HOST_MODE = common dso_local global i32 0, align 4
@DRD_DEVICE_MODE = common dso_local global i32 0, align 4
@ICFG_DRD_P0CTL = common dso_local global i64 0, align 8
@ICFG_DEV_BIT = common dso_local global i32 0, align 4
@OHCI_OVRCUR_POL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid extcon event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ns2_phy_driver*)* @connect_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_change(%struct.ns2_phy_driver* %0) #0 {
  %2 = alloca %struct.ns2_phy_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ns2_phy_driver* %0, %struct.ns2_phy_driver** %2, align 8
  %5 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %6 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %11 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ICFG_FSM_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %116 [
    i32 129, label %17
    i32 128, label %60
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @DRD_HOST_MODE, align 4
  %19 = load i32, i32* @DRD_DEVICE_MODE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %26 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ICFG_FSM_CTRL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @DRD_HOST_MODE, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* @DRD_DEVICE_MODE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %39 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ICFG_FSM_CTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %45 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ICFG_DRD_P0CTL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @ICFG_DEV_BIT, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %55 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ICFG_DRD_P0CTL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  br label %118

60:                                               ; preds = %1
  %61 = load i32, i32* @DRD_HOST_MODE, align 4
  %62 = load i32, i32* @DRD_DEVICE_MODE, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %69 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ICFG_FSM_CTRL, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @DRD_DEVICE_MODE, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = load i32, i32* @DRD_HOST_MODE, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %82 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ICFG_FSM_CTRL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %88 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @readl(i64 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @OHCI_OVRCUR_POL, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %96 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @writel(i32 %94, i64 %97)
  %99 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %100 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ICFG_DRD_P0CTL, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @readl(i64 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @ICFG_DEV_BIT, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %2, align 8
  %111 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ICFG_DRD_P0CTL, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel(i32 %109, i64 %114)
  br label %118

116:                                              ; preds = %1
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %60, %17
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
