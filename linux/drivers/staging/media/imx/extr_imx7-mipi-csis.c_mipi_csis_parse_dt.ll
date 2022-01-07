; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.csi_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@DEFAULT_SCLK_CSIS_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mrst\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"fsl,csis-hs-settle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.csi_state*)* @mipi_csis_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_parse_dt(%struct.platform_device* %0, %struct.csi_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.csi_state*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.csi_state* %1, %struct.csi_state** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %13 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %12, i32 0, i32 2
  %14 = call i64 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @DEFAULT_SCLK_CSIS_FREQ, align 4
  %18 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %19 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @devm_reset_control_get_exclusive(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %25 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %27 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %33 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %20
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %39 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %38, i32 0, i32 0
  %40 = call i64 @of_property_read_u32(%struct.device_node* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.TYPE_2__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
