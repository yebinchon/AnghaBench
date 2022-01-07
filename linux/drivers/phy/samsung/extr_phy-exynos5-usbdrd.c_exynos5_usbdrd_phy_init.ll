; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_usb_instance = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.phy_usb_instance*)*, i32 (%struct.exynos5_usbdrd_phy*)* }
%struct.exynos5_usbdrd_phy = type { i32, i64 }

@EXYNOS5_DRD_PHYREG0 = common dso_local global i64 0, align 8
@EXYNOS5_DRD_PHYRESUME = common dso_local global i64 0, align 8
@LINKSYSTEM_XHCI_VERSION_CONTROL = common dso_local global i32 0, align 4
@EXYNOS5_DRD_LINKSYSTEM = common dso_local global i64 0, align 8
@EXYNOS5_DRD_PHYPARAM0 = common dso_local global i64 0, align 8
@PHYPARAM0_REF_USE_PAD = common dso_local global i32 0, align 4
@EXYNOS5_DRD_PHYUTMICLKSEL = common dso_local global i64 0, align 8
@PHYUTMICLKSEL_UTMI_CLKSEL = common dso_local global i32 0, align 4
@PHYCLKRST_RETENABLEN = common dso_local global i32 0, align 4
@PHYCLKRST_REF_SSP_EN = common dso_local global i32 0, align 4
@PHYCLKRST_SSC_EN = common dso_local global i32 0, align 4
@PHYCLKRST_COMMONONN = common dso_local global i32 0, align 4
@PHYCLKRST_PORTRESET = common dso_local global i32 0, align 4
@EXYNOS5_DRD_PHYCLKRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @exynos5_usbdrd_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_usbdrd_phy_init(%struct.phy* %0) #0 {
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
  br label %124

20:                                               ; preds = %1
  %21 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %22 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EXYNOS5_DRD_PHYREG0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  %27 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %28 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EXYNOS5_DRD_PHYRESUME, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 0, i64 %31)
  %33 = load i32, i32* @LINKSYSTEM_XHCI_VERSION_CONTROL, align 4
  %34 = call i32 @LINKSYSTEM_FLADJ(i32 32)
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %38 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EXYNOS5_DRD_LINKSYSTEM, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %44 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EXYNOS5_DRD_PHYPARAM0, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @PHYPARAM0_REF_USE_PAD, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %55 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @EXYNOS5_DRD_PHYPARAM0, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %61 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EXYNOS5_DRD_PHYUTMICLKSEL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @PHYUTMICLKSEL_UTMI_CLKSEL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %71 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EXYNOS5_DRD_PHYUTMICLKSEL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %6, align 8
  %77 = getelementptr inbounds %struct.phy_usb_instance, %struct.phy_usb_instance* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32 (%struct.exynos5_usbdrd_phy*)*, i32 (%struct.exynos5_usbdrd_phy*)** %79, align 8
  %81 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %82 = call i32 %80(%struct.exynos5_usbdrd_phy* %81)
  %83 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %6, align 8
  %84 = getelementptr inbounds %struct.phy_usb_instance, %struct.phy_usb_instance* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.phy_usb_instance*)*, i32 (%struct.phy_usb_instance*)** %86, align 8
  %88 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %6, align 8
  %89 = call i32 %87(%struct.phy_usb_instance* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @PHYCLKRST_RETENABLEN, align 4
  %91 = load i32, i32* @PHYCLKRST_REF_SSP_EN, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @PHYCLKRST_SSC_EN, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PHYCLKRST_COMMONONN, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @PHYCLKRST_PORTRESET, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %103 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @EXYNOS5_DRD_PHYCLKRST, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = call i32 @udelay(i32 10)
  %109 = load i32, i32* @PHYCLKRST_PORTRESET, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %115 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @EXYNOS5_DRD_PHYCLKRST, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %113, i64 %118)
  %120 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %7, align 8
  %121 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @clk_disable_unprepare(i32 %122)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %20, %18
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.phy_usb_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.exynos5_usbdrd_phy* @to_usbdrd_phy(%struct.phy_usb_instance*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @LINKSYSTEM_FLADJ(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
