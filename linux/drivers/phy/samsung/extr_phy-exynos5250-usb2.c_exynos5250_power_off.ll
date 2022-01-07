; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-usb2.c_exynos5250_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5250-usb2.c_exynos5250_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { %struct.TYPE_2__*, %struct.samsung_usb2_phy_driver* }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_usb2_phy_driver = type { i64 }

@EXYNOS_5250_USBOTGSYS = common dso_local global i64 0, align 8
@EXYNOS_5250_USBOTGSYS_FORCE_SUSPEND = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_SIDDQ_UOTG = common dso_local global i32 0, align 4
@EXYNOS_5250_USBOTGSYS_FORCE_SLEEP = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0 = common dso_local global i64 0, align 8
@EXYNOS_5250_HOSTPHYCTRL0_SIDDQ = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_FORCESUSPEND = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_FORCESLEEP = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_PHYSWRST = common dso_local global i32 0, align 4
@EXYNOS_5250_HOSTPHYCTRL0_PHYSWRSTALL = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRLX_REFCLKDIV_12 = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRLX_REFCLKSEL_DEFAULT = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRLX_SIDDQ = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRLX_FORCESLEEP = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRLX_FORCESUSPEND = common dso_local global i32 0, align 4
@EXYNOS_5250_HSICPHYCTRL1 = common dso_local global i64 0, align 8
@EXYNOS_5250_HSICPHYCTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_usb2_phy_instance*)* @exynos5250_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5250_power_off(%struct.samsung_usb2_phy_instance* %0) #0 {
  %2 = alloca %struct.samsung_usb2_phy_instance*, align 8
  %3 = alloca %struct.samsung_usb2_phy_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.samsung_usb2_phy_instance* %0, %struct.samsung_usb2_phy_instance** %2, align 8
  %7 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %8 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %7, i32 0, i32 1
  %9 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %8, align 8
  store %struct.samsung_usb2_phy_driver* %9, %struct.samsung_usb2_phy_driver** %3, align 8
  %10 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %11 = call i32 @exynos5250_isol(%struct.samsung_usb2_phy_instance* %10, i32 1)
  %12 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %13 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %87 [
    i32 131, label %17
    i32 130, label %38
    i32 129, label %63
    i32 128, label %63
  ]

17:                                               ; preds = %1
  %18 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %19 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EXYNOS_5250_USBOTGSYS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FORCE_SUSPEND, align 4
  %25 = load i32, i32* @EXYNOS_5250_USBOTGSYS_SIDDQ_UOTG, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @EXYNOS_5250_USBOTGSYS_FORCE_SLEEP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %33 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EXYNOS_5250_USBOTGSYS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  br label %87

38:                                               ; preds = %1
  %39 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %40 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EXYNOS_5250_HOSTPHYCTRL0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_SIDDQ, align 4
  %46 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_FORCESUSPEND, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_FORCESLEEP, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_PHYSWRST, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @EXYNOS_5250_HOSTPHYCTRL0_PHYSWRSTALL, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %58 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EXYNOS_5250_HOSTPHYCTRL0, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  br label %87

63:                                               ; preds = %1, %1
  %64 = load i32, i32* @EXYNOS_5250_HSICPHYCTRLX_REFCLKDIV_12, align 4
  %65 = load i32, i32* @EXYNOS_5250_HSICPHYCTRLX_REFCLKSEL_DEFAULT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @EXYNOS_5250_HSICPHYCTRLX_SIDDQ, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @EXYNOS_5250_HSICPHYCTRLX_FORCESLEEP, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @EXYNOS_5250_HSICPHYCTRLX_FORCESUSPEND, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %75 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EXYNOS_5250_HSICPHYCTRL1, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %3, align 8
  %82 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @EXYNOS_5250_HSICPHYCTRL2, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %1, %63, %38, %17
  ret i32 0
}

declare dso_local i32 @exynos5250_isol(%struct.samsung_usb2_phy_instance*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
