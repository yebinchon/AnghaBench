; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cio_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cio_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"ths_prepare %u (%uns), ths_prepare_ths_zero %u (%uns)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"ths_trail %u (%uns), ths_exit %u (%uns)\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"tlpx_half %u (%uns), tclk_trail %u (%uns), tclk_zero %u (%uns)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"tclk_prepare %u (%uns)\0A\00", align 1
@DSI_DSIPHY_CFG0 = common dso_local global i32 0, align 4
@DSI_DSIPHY_CFG1 = common dso_local global i32 0, align 4
@FEAT_DSI_PHY_DCC = common dso_local global i32 0, align 4
@DSI_DSIPHY_CFG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @dsi_cio_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_cio_timings(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = call i32 @ns2ddr(%struct.platform_device* %12, i32 70)
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %4, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = call i32 @ns2ddr(%struct.platform_device* %15, i32 175)
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %5, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = call i32 @ns2ddr(%struct.platform_device* %18, i32 60)
  %20 = add nsw i32 %19, 5
  store i32 %20, i32* %6, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = call i32 @ns2ddr(%struct.platform_device* %21, i32 145)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = call i32 @ns2ddr(%struct.platform_device* %23, i32 25)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = call i32 @ns2ddr(%struct.platform_device* %25, i32 60)
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %9, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %29 = call i32 @ns2ddr(%struct.platform_device* %28, i32 65)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = call i32 @ns2ddr(%struct.platform_device* %30, i32 260)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ddr2ns(%struct.platform_device* %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ddr2ns(%struct.platform_device* %37, i32 %38)
  %40 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %36, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ddr2ns(%struct.platform_device* %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ddr2ns(%struct.platform_device* %46, i32 %47)
  %49 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ddr2ns(%struct.platform_device* %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ddr2ns(%struct.platform_device* %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ddr2ns(%struct.platform_device* %59, i32 %60)
  %62 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53, i32 %54, i32 %57, i32 %58, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @ddr2ns(%struct.platform_device* %64, i32 %65)
  %67 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %69 = load i32, i32* @DSI_DSIPHY_CFG0, align 4
  %70 = call i32 @dsi_read_reg(%struct.platform_device* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @FLD_MOD(i32 %71, i32 %72, i32 31, i32 24)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @FLD_MOD(i32 %74, i32 %75, i32 23, i32 16)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @FLD_MOD(i32 %77, i32 %78, i32 15, i32 8)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @FLD_MOD(i32 %80, i32 %81, i32 7, i32 0)
  store i32 %82, i32* %3, align 4
  %83 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %84 = load i32, i32* @DSI_DSIPHY_CFG0, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @dsi_write_reg(%struct.platform_device* %83, i32 %84, i32 %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %88 = load i32, i32* @DSI_DSIPHY_CFG1, align 4
  %89 = call i32 @dsi_read_reg(%struct.platform_device* %87, i32 %88)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @FLD_MOD(i32 %90, i32 %91, i32 20, i32 16)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @FLD_MOD(i32 %93, i32 %94, i32 15, i32 8)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @FLD_MOD(i32 %96, i32 %97, i32 7, i32 0)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* @FEAT_DSI_PHY_DCC, align 4
  %100 = call i64 @dss_has_feature(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %1
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @FLD_MOD(i32 %103, i32 0, i32 21, i32 21)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @FLD_MOD(i32 %105, i32 1, i32 22, i32 22)
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @FLD_MOD(i32 %107, i32 1, i32 23, i32 23)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %1
  %110 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %111 = load i32, i32* @DSI_DSIPHY_CFG1, align 4
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @dsi_write_reg(%struct.platform_device* %110, i32 %111, i32 %112)
  %114 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %115 = load i32, i32* @DSI_DSIPHY_CFG2, align 4
  %116 = call i32 @dsi_read_reg(%struct.platform_device* %114, i32 %115)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @FLD_MOD(i32 %117, i32 %118, i32 7, i32 0)
  store i32 %119, i32* %3, align 4
  %120 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %121 = load i32, i32* @DSI_DSIPHY_CFG2, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @dsi_write_reg(%struct.platform_device* %120, i32 %121, i32 %122)
  ret void
}

declare dso_local i32 @ns2ddr(%struct.platform_device*, i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, ...) #1

declare dso_local i32 @ddr2ns(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
