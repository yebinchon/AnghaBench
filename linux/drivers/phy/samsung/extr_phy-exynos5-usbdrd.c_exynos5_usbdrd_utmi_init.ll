; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_utmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_utmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos5_usbdrd_phy = type { i64 }

@EXYNOS5_DRD_PHYPARAM0 = common dso_local global i64 0, align 8
@PHYPARAM0_REF_LOSLEVEL_MASK = common dso_local global i32 0, align 4
@PHYPARAM0_REF_LOSLEVEL = common dso_local global i32 0, align 4
@EXYNOS5_DRD_PHYPARAM1 = common dso_local global i64 0, align 8
@PHYPARAM1_PCS_TXDEEMPH_MASK = common dso_local global i32 0, align 4
@PHYPARAM1_PCS_TXDEEMPH = common dso_local global i32 0, align 4
@PHYUTMI_OTGDISABLE = common dso_local global i32 0, align 4
@EXYNOS5_DRD_PHYUTMI = common dso_local global i64 0, align 8
@EXYNOS5_DRD_PHYTEST = common dso_local global i64 0, align 8
@PHYTEST_POWERDOWN_HSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos5_usbdrd_phy*)* @exynos5_usbdrd_utmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5_usbdrd_utmi_init(%struct.exynos5_usbdrd_phy* %0) #0 {
  %2 = alloca %struct.exynos5_usbdrd_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.exynos5_usbdrd_phy* %0, %struct.exynos5_usbdrd_phy** %2, align 8
  %4 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %2, align 8
  %5 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EXYNOS5_DRD_PHYPARAM0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @PHYPARAM0_REF_LOSLEVEL_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @PHYPARAM0_REF_LOSLEVEL, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %2, align 8
  %19 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EXYNOS5_DRD_PHYPARAM0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %2, align 8
  %25 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EXYNOS5_DRD_PHYPARAM1, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @PHYPARAM1_PCS_TXDEEMPH_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @PHYPARAM1_PCS_TXDEEMPH, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %2, align 8
  %39 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EXYNOS5_DRD_PHYPARAM1, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* @PHYUTMI_OTGDISABLE, align 4
  %45 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %2, align 8
  %46 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EXYNOS5_DRD_PHYUTMI, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %2, align 8
  %52 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EXYNOS5_DRD_PHYTEST, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @PHYTEST_POWERDOWN_HSP, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %2, align 8
  %63 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EXYNOS5_DRD_PHYTEST, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
