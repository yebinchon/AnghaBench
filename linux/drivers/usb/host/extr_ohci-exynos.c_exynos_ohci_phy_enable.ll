; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-exynos.c_exynos_ohci_phy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-exynos.c_exynos_ohci_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.exynos_ohci_hcd = type { i32* }

@PHY_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @exynos_ohci_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ohci_phy_enable(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.exynos_ohci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.usb_hcd* @dev_get_drvdata(%struct.device* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.exynos_ohci_hcd* @to_exynos_ohci(%struct.usb_hcd* %9)
  store %struct.exynos_ohci_hcd* %10, %struct.exynos_ohci_hcd** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PHY_NUMBER, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %43

20:                                               ; preds = %18
  %21 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %22 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_ERR(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %20
  %31 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %32 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @phy_power_on(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %30, %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %11

43:                                               ; preds = %18
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %72, %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %54 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IS_ERR(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %52
  %63 = load %struct.exynos_ohci_hcd*, %struct.exynos_ohci_hcd** %4, align 8
  %64 = getelementptr inbounds %struct.exynos_ohci_hcd, %struct.exynos_ohci_hcd* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @phy_power_off(i32 %69)
  br label %71

71:                                               ; preds = %62, %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %5, align 4
  br label %49

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75, %43
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.usb_hcd* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.exynos_ohci_hcd* @to_exynos_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
