; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_phy_pwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_phy_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { %struct.TYPE_2__*, %struct.samsung_usb2_phy_driver* }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_usb2_phy_driver = type { i64 }

@EXYNOS_4x12_UPHYPWR_PHY0 = common dso_local global i32 0, align 4
@EXYNOS_4x12_URSTCON_PHY0 = common dso_local global i32 0, align 4
@EXYNOS_4x12_UPHYPWR_PHY1 = common dso_local global i32 0, align 4
@EXYNOS_4x12_URSTCON_HOST_PHY = common dso_local global i32 0, align 4
@EXYNOS_4x12_URSTCON_PHY1 = common dso_local global i32 0, align 4
@EXYNOS_4x12_URSTCON_HOST_LINK_P0 = common dso_local global i32 0, align 4
@EXYNOS_4x12_UPHYPWR_HSIC0 = common dso_local global i32 0, align 4
@EXYNOS_4x12_URSTCON_HSIC0 = common dso_local global i32 0, align 4
@EXYNOS_4x12_URSTCON_HOST_LINK_P1 = common dso_local global i32 0, align 4
@EXYNOS_4x12_UPHYPWR_HSIC1 = common dso_local global i32 0, align 4
@EXYNOS_4x12_URSTCON_HSIC1 = common dso_local global i32 0, align 4
@EXYNOS_4x12_UPHYPWR = common dso_local global i64 0, align 8
@EXYNOS_4x12_UPHYRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_usb2_phy_instance*, i32)* @exynos4x12_phy_pwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4x12_phy_pwr(%struct.samsung_usb2_phy_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.samsung_usb2_phy_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.samsung_usb2_phy_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.samsung_usb2_phy_instance* %0, %struct.samsung_usb2_phy_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %11 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %10, i32 0, i32 1
  %12 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %11, align 8
  store %struct.samsung_usb2_phy_driver* %12, %struct.samsung_usb2_phy_driver** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %14 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %38 [
    i32 131, label %18
    i32 130, label %21
    i32 129, label %28
    i32 128, label %33
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @EXYNOS_4x12_UPHYPWR_PHY0, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @EXYNOS_4x12_URSTCON_PHY0, align 4
  store i32 %20, i32* %6, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load i32, i32* @EXYNOS_4x12_UPHYPWR_PHY1, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @EXYNOS_4x12_URSTCON_HOST_PHY, align 4
  %24 = load i32, i32* @EXYNOS_4x12_URSTCON_PHY1, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @EXYNOS_4x12_URSTCON_HOST_LINK_P0, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %6, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load i32, i32* @EXYNOS_4x12_UPHYPWR_HSIC0, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @EXYNOS_4x12_URSTCON_HSIC0, align 4
  %31 = load i32, i32* @EXYNOS_4x12_URSTCON_HOST_LINK_P1, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %6, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load i32, i32* @EXYNOS_4x12_UPHYPWR_HSIC1, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @EXYNOS_4x12_URSTCON_HSIC1, align 4
  %36 = load i32, i32* @EXYNOS_4x12_URSTCON_HOST_LINK_P1, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %2, %33, %28, %21, %18
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %38
  %42 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %43 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EXYNOS_4x12_UPHYPWR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %54 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EXYNOS_4x12_UPHYPWR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %60 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @EXYNOS_4x12_UPHYRST, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %70 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @EXYNOS_4x12_UPHYRST, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = call i32 @udelay(i32 10)
  %76 = load i32, i32* %6, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %82 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @EXYNOS_4x12_UPHYRST, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = call i32 @udelay(i32 80)
  br label %105

88:                                               ; preds = %38
  %89 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %90 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EXYNOS_4x12_UPHYPWR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @readl(i64 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %100 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @EXYNOS_4x12_UPHYPWR, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  br label %105

105:                                              ; preds = %88, %41
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
