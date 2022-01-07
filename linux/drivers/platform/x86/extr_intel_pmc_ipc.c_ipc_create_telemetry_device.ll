; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_ipc_create_telemetry_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_ipc_create_telemetry_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64 }
%struct.TYPE_2__ = type { %struct.platform_device*, i64, i64, i64, i64, i32 }
%struct.platform_device = type { i32 }
%struct.platform_device_info = type { i32, i32, %struct.resource*, i32, i32 }

@telemetry_res = common dso_local global %struct.resource* null, align 8
@TELEMETRY_DEVICE_NAME = common dso_local global i32 0, align 4
@ipcdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TELEMETRY_RESOURCE_PUNIT_SSRAM = common dso_local global i32 0, align 4
@TELEMETRY_RESOURCE_PMC_SSRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ipc_create_telemetry_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_create_telemetry_device() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.platform_device_info, align 8
  %5 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 0
  store i32 -1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 1
  %7 = load %struct.resource*, %struct.resource** @telemetry_res, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.resource* %7)
  store i32 %8, i32* %6, align 4
  %9 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 2
  %10 = load %struct.resource*, %struct.resource** @telemetry_res, align 8
  store %struct.resource* %10, %struct.resource** %9, align 8
  %11 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 3
  %12 = load i32, i32* @TELEMETRY_DEVICE_NAME, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 5), align 8
  store i32 %14, i32* %13, align 4
  %15 = load %struct.resource*, %struct.resource** @telemetry_res, align 8
  %16 = load i32, i32* @TELEMETRY_RESOURCE_PUNIT_SSRAM, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %15, i64 %17
  store %struct.resource* %18, %struct.resource** %3, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 4), align 8
  %20 = load %struct.resource*, %struct.resource** %3, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.resource*, %struct.resource** %3, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 3), align 8
  %26 = add nsw i64 %24, %25
  %27 = sub nsw i64 %26, 1
  %28 = load %struct.resource*, %struct.resource** %3, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.resource*, %struct.resource** @telemetry_res, align 8
  %31 = load i32, i32* @TELEMETRY_RESOURCE_PMC_SSRAM, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %30, i64 %32
  store %struct.resource* %33, %struct.resource** %3, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 2), align 8
  %35 = load %struct.resource*, %struct.resource** %3, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.resource*, %struct.resource** %3, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 1), align 8
  %41 = add nsw i64 %39, %40
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.resource*, %struct.resource** %3, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = call %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %4)
  store %struct.platform_device* %45, %struct.platform_device** %2, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = call i64 @IS_ERR(%struct.platform_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %0
  %50 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %51 = call i32 @PTR_ERR(%struct.platform_device* %50)
  store i32 %51, i32* %1, align 4
  br label %54

52:                                               ; preds = %0
  %53 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  store %struct.platform_device* %53, %struct.platform_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
