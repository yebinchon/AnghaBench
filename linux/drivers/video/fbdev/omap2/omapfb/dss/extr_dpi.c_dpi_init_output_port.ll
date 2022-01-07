; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_init_output_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_init_output_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device_node = type { %struct.dpi_data* }
%struct.dpi_data = type { %struct.omap_dss_device }
%struct.omap_dss_device = type { i8*, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dpi.2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dpi.1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dpi.0\00", align 1
@OMAP_DSS_OUTPUT_DPI = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DPI = common dso_local global i32 0, align 4
@dpi_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.device_node*)* @dpi_init_output_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpi_init_output_port(%struct.platform_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.dpi_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = getelementptr inbounds %struct.device_node, %struct.device_node* %9, i32 0, i32 0
  %11 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  store %struct.dpi_data* %11, %struct.dpi_data** %5, align 8
  %12 = load %struct.dpi_data*, %struct.dpi_data** %5, align 8
  %13 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %12, i32 0, i32 0
  store %struct.omap_dss_device* %13, %struct.omap_dss_device** %6, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %28 [
    i32 2, label %21
    i32 1, label %24
    i32 0, label %27
  ]

21:                                               ; preds = %19
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %23 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  br label %31

24:                                               ; preds = %19
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %26 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %26, align 8
  br label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %19, %27
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %30 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %30, align 8
  br label %31

31:                                               ; preds = %28, %24, %21
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 7
  store i32* %33, i32** %35, align 8
  %36 = load i32, i32* @OMAP_DSS_OUTPUT_DPI, align 4
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %38 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @OMAP_DISPLAY_TYPE_DPI, align 4
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %41 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dpi_get_channel(i32 %42)
  %44 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %45 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %48 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %50 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32* @dpi_ops, i32** %51, align 8
  %52 = load i32, i32* @THIS_MODULE, align 4
  %53 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %54 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %56 = call i32 @omapdss_register_output(%struct.omap_dss_device* %55)
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dpi_get_channel(i32) #1

declare dso_local i32 @omapdss_register_output(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
