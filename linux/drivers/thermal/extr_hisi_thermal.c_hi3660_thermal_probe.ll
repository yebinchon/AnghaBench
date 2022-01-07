; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hi3660_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hi3660_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_thermal_data = type { i32, %struct.TYPE_2__*, %struct.platform_device* }
%struct.TYPE_2__ = type { i8*, %struct.hisi_thermal_data*, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HI3660_BIG_SENSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tsensor_a73\00", align 1
@HI3660_LITTLE_SENSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"tsensor_a53\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_thermal_data*)* @hi3660_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_thermal_probe(%struct.hisi_thermal_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_thermal_data*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.hisi_thermal_data* %0, %struct.hisi_thermal_data** %3, align 8
  %6 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %6, i32 0, i32 2
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %12 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %15 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 24, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_2__* @devm_kzalloc(%struct.device* %13, i32 %19, i32 %20)
  %22 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %23 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %22, i32 0, i32 1
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %66

31:                                               ; preds = %1
  %32 = load i32, i32* @HI3660_BIG_SENSOR, align 4
  %33 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %34 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %32, i32* %37, align 8
  %38 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %39 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %44 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %45 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store %struct.hisi_thermal_data* %43, %struct.hisi_thermal_data** %48, align 8
  %49 = load i32, i32* @HI3660_LITTLE_SENSOR, align 4
  %50 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %51 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %49, i32* %54, align 8
  %55 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %56 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %59, align 8
  %60 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %61 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %3, align 8
  %62 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store %struct.hisi_thermal_data* %60, %struct.hisi_thermal_data** %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %31, %28
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_2__* @devm_kzalloc(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
