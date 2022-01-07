; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4210-usb2.c_exynos4210_phy_pwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4210-usb2.c_exynos4210_phy_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { %struct.TYPE_2__*, %struct.samsung_usb2_phy_driver* }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_usb2_phy_driver = type { i32, i64 }

@EXYNOS_4210_UPHYPWR_PHY0 = common dso_local global i32 0, align 4
@EXYNOS_4210_URSTCON_PHY0 = common dso_local global i32 0, align 4
@EXYNOS_4210_UPHYPWR_PHY1 = common dso_local global i32 0, align 4
@EXYNOS_4210_URSTCON_PHY1_ALL = common dso_local global i32 0, align 4
@EXYNOS_4210_URSTCON_PHY1_P0 = common dso_local global i32 0, align 4
@EXYNOS_4210_URSTCON_PHY1_P1P2 = common dso_local global i32 0, align 4
@EXYNOS_4210_URSTCON_HOST_LINK_ALL = common dso_local global i32 0, align 4
@EXYNOS_4210_URSTCON_HOST_LINK_P0 = common dso_local global i32 0, align 4
@EXYNOS_4210_UPHY1CON = common dso_local global i64 0, align 8
@EXYNOS_4210_UPHYPWR_HSIC0 = common dso_local global i32 0, align 4
@EXYNOS_4210_URSTCON_HOST_LINK_P1 = common dso_local global i32 0, align 4
@EXYNOS_4210_UPHYPWR_HSIC1 = common dso_local global i32 0, align 4
@EXYNOS_4210_URSTCON_HOST_LINK_P2 = common dso_local global i32 0, align 4
@EXYNOS_4210_UPHYCLK = common dso_local global i64 0, align 8
@EXYNOS_4210_UPHYCLK_PHYFSEL_MASK = common dso_local global i32 0, align 4
@EXYNOS_4210_UPHYCLK_PHYFSEL_OFFSET = common dso_local global i32 0, align 4
@EXYNOS_4210_UPHYPWR = common dso_local global i64 0, align 8
@EXYNOS_4210_UPHYRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_usb2_phy_instance*, i32)* @exynos4210_phy_pwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4210_phy_pwr(%struct.samsung_usb2_phy_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.samsung_usb2_phy_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.samsung_usb2_phy_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.samsung_usb2_phy_instance* %0, %struct.samsung_usb2_phy_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %12 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %11, i32 0, i32 1
  %13 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %12, align 8
  store %struct.samsung_usb2_phy_driver* %13, %struct.samsung_usb2_phy_driver** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %15 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %50 [
    i32 131, label %19
    i32 130, label %22
    i32 129, label %40
    i32 128, label %45
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @EXYNOS_4210_UPHYPWR_PHY0, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @EXYNOS_4210_URSTCON_PHY0, align 4
  store i32 %21, i32* %6, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load i32, i32* @EXYNOS_4210_UPHYPWR_PHY1, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @EXYNOS_4210_URSTCON_PHY1_ALL, align 4
  %25 = load i32, i32* @EXYNOS_4210_URSTCON_PHY1_P0, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @EXYNOS_4210_URSTCON_PHY1_P1P2, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @EXYNOS_4210_URSTCON_HOST_LINK_ALL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @EXYNOS_4210_URSTCON_HOST_LINK_P0, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %35 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EXYNOS_4210_UPHY1CON, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  br label %50

40:                                               ; preds = %2
  %41 = load i32, i32* @EXYNOS_4210_UPHYPWR_HSIC0, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @EXYNOS_4210_URSTCON_PHY1_P1P2, align 4
  %43 = load i32, i32* @EXYNOS_4210_URSTCON_HOST_LINK_P1, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %6, align 4
  br label %50

45:                                               ; preds = %2
  %46 = load i32, i32* @EXYNOS_4210_UPHYPWR_HSIC1, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @EXYNOS_4210_URSTCON_PHY1_P1P2, align 4
  %48 = load i32, i32* @EXYNOS_4210_URSTCON_HOST_LINK_P2, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %2, %45, %40, %22, %19
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %124

53:                                               ; preds = %50
  %54 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %55 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @EXYNOS_4210_UPHYCLK, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @EXYNOS_4210_UPHYCLK_PHYFSEL_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %65 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EXYNOS_4210_UPHYCLK_PHYFSEL_OFFSET, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %73 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @EXYNOS_4210_UPHYCLK, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %79 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EXYNOS_4210_UPHYPWR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %90 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EXYNOS_4210_UPHYPWR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %96 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @EXYNOS_4210_UPHYRST, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %106 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @EXYNOS_4210_UPHYRST, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  %111 = call i32 @udelay(i32 10)
  %112 = load i32, i32* %6, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %118 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @EXYNOS_4210_UPHYRST, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %116, i64 %121)
  %123 = call i32 @udelay(i32 80)
  br label %141

124:                                              ; preds = %50
  %125 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %126 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @EXYNOS_4210_UPHYPWR, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @readl(i64 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %136 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @EXYNOS_4210_UPHYPWR, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 %134, i64 %139)
  br label %141

141:                                              ; preds = %124, %53
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
