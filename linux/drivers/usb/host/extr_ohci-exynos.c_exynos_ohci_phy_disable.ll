; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-exynos.c_exynos_ohci_phy_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-exynos.c_exynos_ohci_phy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.exynos_ohci_hcd = type { i32* }

@PHY_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @exynos_ohci_phy_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_ohci_phy_disable(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.exynos_ohci_hcd*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.usb_hcd* @dev_get_drvdata(%struct.device* %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.exynos_ohci_hcd* @to_exynos_ohci(%struct.usb_hcd* %8)
  store %struct.exynos_ohci_hcd* %9, %struct.exynos_ohci_hcd** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PHY_NUMBER, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IS_ERR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %14
  %25 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @phy_power_off(i32 %31)
  br label %33

33:                                               ; preds = %24, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %10

37:                                               ; preds = %10
  ret void
}

declare dso_local %struct.usb_hcd* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.exynos_ohci_hcd* @to_exynos_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
