; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_ns2_drd_phy_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns2-usbdrd.c_ns2_drd_phy_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ns2_phy_data = type { i64, %struct.ns2_phy_driver* }
%struct.ns2_phy_driver = type { i64, i64, i64, i64 }

@EVT_DEVICE = common dso_local global i64 0, align 8
@DRD_DEV_VAL = common dso_local global i64 0, align 8
@ICFG_DRD_P0CTL = common dso_local global i64 0, align 8
@IDM_RST_BIT = common dso_local global i64 0, align 8
@AFE_CORERDY_VDDC = common dso_local global i64 0, align 8
@DRD_DEV_MODE = common dso_local global i64 0, align 8
@PHY_PLL_RESETB = common dso_local global i64 0, align 8
@PHY_RESETB = common dso_local global i64 0, align 8
@ICFG_MISC_STAT = common dso_local global i32 0, align 4
@PHY_PLL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Phy PLL lock failed\0A\00", align 1
@DRD_HOST_VAL = common dso_local global i64 0, align 8
@OHCI_OVRCUR_POL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ns2_drd_phy_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_drd_phy_poweron(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.ns2_phy_data*, align 8
  %5 = alloca %struct.ns2_phy_driver*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.ns2_phy_data* @phy_get_drvdata(%struct.phy* %9)
  store %struct.ns2_phy_data* %10, %struct.ns2_phy_data** %4, align 8
  %11 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %4, align 8
  %12 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %11, i32 0, i32 1
  %13 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %12, align 8
  store %struct.ns2_phy_driver* %13, %struct.ns2_phy_driver** %5, align 8
  %14 = load %struct.ns2_phy_data*, %struct.ns2_phy_data** %4, align 8
  %15 = getelementptr inbounds %struct.ns2_phy_data, %struct.ns2_phy_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @EVT_DEVICE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %81

20:                                               ; preds = %1
  %21 = load i64, i64* @DRD_DEV_VAL, align 8
  %22 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %23 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ICFG_DRD_P0CTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i64 %21, i64 %26)
  %28 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %29 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @readl(i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* @IDM_RST_BIT, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %8, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %38 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @writel(i64 %36, i64 %39)
  %41 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %42 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @readl(i64 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* @AFE_CORERDY_VDDC, align 8
  %46 = load i64, i64* @DRD_DEV_MODE, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* %8, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %52 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @writel(i64 %50, i64 %53)
  %55 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %56 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @readl(i64 %57)
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* @PHY_PLL_RESETB, align 8
  %60 = load i64, i64* @PHY_RESETB, align 8
  %61 = or i64 %59, %60
  %62 = load i64, i64* %8, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %66 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @writel(i64 %64, i64 %67)
  %69 = load i32, i32* @ICFG_MISC_STAT, align 4
  %70 = load i32, i32* @PHY_PLL_LOCK, align 4
  %71 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %72 = call i32 @pll_lock_stat(i32 %69, i32 %70, %struct.ns2_phy_driver* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %20
  %76 = load %struct.phy*, %struct.phy** %3, align 8
  %77 = getelementptr inbounds %struct.phy, %struct.phy* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %139

80:                                               ; preds = %20
  br label %138

81:                                               ; preds = %1
  %82 = load i64, i64* @DRD_HOST_VAL, align 8
  %83 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %84 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ICFG_DRD_P0CTL, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i64 %82, i64 %87)
  %89 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %90 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @readl(i64 %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* @AFE_CORERDY_VDDC, align 8
  %94 = load i64, i64* %8, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %98 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @writel(i64 %96, i64 %99)
  %101 = load i32, i32* @ICFG_MISC_STAT, align 4
  %102 = load i32, i32* @PHY_PLL_LOCK, align 4
  %103 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %104 = call i32 @pll_lock_stat(i32 %101, i32 %102, %struct.ns2_phy_driver* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %81
  %108 = load %struct.phy*, %struct.phy** %3, align 8
  %109 = getelementptr inbounds %struct.phy, %struct.phy* %108, i32 0, i32 0
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %139

112:                                              ; preds = %81
  %113 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %114 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @readl(i64 %115)
  store i64 %116, i64* %8, align 8
  %117 = load i64, i64* @IDM_RST_BIT, align 8
  %118 = xor i64 %117, -1
  %119 = load i64, i64* %8, align 8
  %120 = and i64 %119, %118
  store i64 %120, i64* %8, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %123 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @writel(i64 %121, i64 %124)
  %126 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %127 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @readl(i64 %128)
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* @OHCI_OVRCUR_POL, align 8
  %131 = load i64, i64* %8, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %8, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.ns2_phy_driver*, %struct.ns2_phy_driver** %5, align 8
  %135 = getelementptr inbounds %struct.ns2_phy_driver, %struct.ns2_phy_driver* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @writel(i64 %133, i64 %136)
  br label %138

138:                                              ; preds = %112, %80
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %107, %75
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.ns2_phy_data* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @pll_lock_stat(i32, i32, %struct.ns2_phy_driver*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
