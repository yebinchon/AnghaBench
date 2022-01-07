; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hi6220_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hi6220_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_thermal_data = type { i32, %struct.TYPE_2__*, i32, %struct.platform_device* }
%struct.TYPE_2__ = type { i8*, %struct.hisi_thermal_data*, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"thermal_clk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get thermal clk: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HI6220_CLUSTER0_SENSOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"tsensor_intr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_thermal_data*)* @hi6220_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_thermal_probe(%struct.hisi_thermal_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_thermal_data*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.hisi_thermal_data* %0, %struct.hisi_thermal_data** %3, align 8
  %7 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %8 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %7, i32 0, i32 3
  %9 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @devm_clk_get(%struct.device* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %15 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %17 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %23 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PTR_ERR(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %69

36:                                               ; preds = %1
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.TYPE_2__* @devm_kzalloc(%struct.device* %37, i32 24, i32 %38)
  %40 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %41 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %40, i32 0, i32 1
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  %42 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %43 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %69

49:                                               ; preds = %36
  %50 = load i32, i32* @HI6220_CLUSTER0_SENSOR, align 4
  %51 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %52 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %50, i32* %55, align 8
  %56 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %57 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %60, align 8
  %61 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %62 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %63 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store %struct.hisi_thermal_data* %61, %struct.hisi_thermal_data** %66, align 8
  %67 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %68 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %49, %46, %34
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @devm_kzalloc(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
