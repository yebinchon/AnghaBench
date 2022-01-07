; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_init_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_init_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dpi_data = type { %struct.omap_dss_device }
%struct.omap_dss_device = type { i8*, i32, %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@OMAP_DSS_OUTPUT_DPI = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dpi.0\00", align 1
@dpi_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @dpi_init_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpi_init_output(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dpi_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.dpi_data* @dpi_get_data_from_pdev(%struct.platform_device* %5)
  store %struct.dpi_data* %6, %struct.dpi_data** %3, align 8
  %7 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %8 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %7, i32 0, i32 0
  store %struct.omap_dss_device* %8, %struct.omap_dss_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %12 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %11, i32 0, i32 6
  store i32* %10, i32** %12, align 8
  %13 = load i32, i32* @OMAP_DSS_OUTPUT_DPI, align 4
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @OMAP_DISPLAY_TYPE_DPI, align 4
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %18 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %20 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = call i32 @dpi_get_channel(i32 0)
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %23 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %25 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* @dpi_ops, i32** %26, align 8
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %29 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %31 = call i32 @omapdss_register_output(%struct.omap_dss_device* %30)
  ret void
}

declare dso_local %struct.dpi_data* @dpi_get_data_from_pdev(%struct.platform_device*) #1

declare dso_local i32 @dpi_get_channel(i32) #1

declare dso_local i32 @omapdss_register_output(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
