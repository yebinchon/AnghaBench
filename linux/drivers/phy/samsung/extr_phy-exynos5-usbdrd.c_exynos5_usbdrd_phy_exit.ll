; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_usb_instance = type { i32 }
%struct.exynos5_usbdrd_phy = type { i32, i64 }

@PHYUTMI_OTGDISABLE = common dso_local global i32 0, align 4
@PHYUTMI_FORCESUSPEND = common dso_local global i32 0, align 4
@PHYUTMI_FORCESLEEP = common dso_local global i32 0, align 4
@EXYNOS5_DRD_PHYUTMI = common dso_local global i64 0, align 8
@EXYNOS5_DRD_PHYCLKRST = common dso_local global i64 0, align 8
@PHYCLKRST_REF_SSP_EN = common dso_local global i32 0, align 4
@PHYCLKRST_SSC_EN = common dso_local global i32 0, align 4
@PHYCLKRST_COMMONONN = common dso_local global i32 0, align 4
@EXYNOS5_DRD_PHYTEST = common dso_local global i64 0, align 8
@PHYTEST_POWERDOWN_SSP = common dso_local global i32 0, align 4
@PHYTEST_POWERDOWN_HSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @exynos5_usbdrd_phy_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_usbdrd_phy_exit(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_usb_instance*, align 8
  %7 = alloca %struct.exynos5_usbdrd_phy*, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %3, align 8
  %9 = call %struct.phy_usb_instance* @phy_get_drvdata(%struct.phy* %8)
  store %struct.phy_usb_instance* %9, %struct.phy_usb_instance** %6, align 8
  %10 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %6, align 8
  %11 = call %struct.exynos5_usbdrd_phy* @to_usbdrd_phy(%struct.phy_usb_instance* %10)
  store %struct.exynos5_usbdrd_phy* %11, %struct.exynos5_usbdrd_phy** %7, align 8
  %12 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %13 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %76

20:                                               ; preds = %1
  %21 = load i32, i32* @PHYUTMI_OTGDISABLE, align 4
  %22 = load i32, i32* @PHYUTMI_FORCESUSPEND, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PHYUTMI_FORCESLEEP, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %28 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EXYNOS5_DRD_PHYUTMI, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %34 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EXYNOS5_DRD_PHYCLKRST, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @PHYCLKRST_REF_SSP_EN, align 4
  %40 = load i32, i32* @PHYCLKRST_SSC_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PHYCLKRST_COMMONONN, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %49 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EXYNOS5_DRD_PHYCLKRST, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %55 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @EXYNOS5_DRD_PHYTEST, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @PHYTEST_POWERDOWN_SSP, align 4
  %61 = load i32, i32* @PHYTEST_POWERDOWN_HSP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %67 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @EXYNOS5_DRD_PHYTEST, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %73 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @clk_disable_unprepare(i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %20, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.phy_usb_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.exynos5_usbdrd_phy* @to_usbdrd_phy(%struct.phy_usb_instance*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
