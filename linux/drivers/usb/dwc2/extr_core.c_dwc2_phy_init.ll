; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@DWC2_SPEED_PARAM_FULL = common dso_local global i64 0, align 8
@DWC2_SPEED_PARAM_LOW = common dso_local global i64 0, align 8
@DWC2_PHY_TYPE_PARAM_FS = common dso_local global i64 0, align 8
@GHWCFG2_HS_PHY_TYPE_ULPI = common dso_local global i64 0, align 8
@GHWCFG2_FS_PHY_TYPE_DEDICATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Setting ULPI FSLS\0A\00", align 1
@GUSBCFG = common dso_local global i32 0, align 4
@GUSBCFG_ULPI_FS_LS = common dso_local global i32 0, align 4
@GUSBCFG_ULPI_CLK_SUSP_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_phy_init(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %9 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DWC2_SPEED_PARAM_FULL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %16 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DWC2_SPEED_PARAM_LOW, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %14, %2
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DWC2_PHY_TYPE_PARAM_FS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dwc2_fs_phy_init(%struct.dwc2_hsotg* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %102

36:                                               ; preds = %28
  br label %46

37:                                               ; preds = %21, %14
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dwc2_hs_phy_init(%struct.dwc2_hsotg* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %102

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %48 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GHWCFG2_HS_PHY_TYPE_ULPI, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %46
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %55 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GHWCFG2_FS_PHY_TYPE_DEDICATED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %53
  %61 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %62 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %68 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %72 = load i32, i32* @GUSBCFG, align 4
  %73 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @GUSBCFG_ULPI_FS_LS, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @GUSBCFG_ULPI_CLK_SUSP_M, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @GUSBCFG, align 4
  %83 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %80, i32 %81, i32 %82)
  br label %100

84:                                               ; preds = %60, %53, %46
  %85 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %86 = load i32, i32* @GUSBCFG, align 4
  %87 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %85, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @GUSBCFG_ULPI_FS_LS, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @GUSBCFG_ULPI_CLK_SUSP_M, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @GUSBCFG, align 4
  %99 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %84, %66
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %43, %34
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @dwc2_fs_phy_init(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_hs_phy_init(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
