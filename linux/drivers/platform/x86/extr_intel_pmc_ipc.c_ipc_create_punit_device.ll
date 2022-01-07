; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_ipc_create_punit_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_ipc.c_ipc_create_punit_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.platform_device*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.platform_device_info = type { i32, i32, i32, i32, i32 }

@ipcdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@punit_res_array = common dso_local global i32 0, align 4
@PUNIT_DEVICE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ipc_create_punit_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_create_punit_device() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.platform_device_info, align 4
  %4 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %3, i32 0, i32 1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 1), align 8
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %3, i32 0, i32 2
  %8 = load i32, i32* @punit_res_array, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %3, i32 0, i32 3
  %10 = load i32, i32* @PUNIT_DEVICE_NAME, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %3, i32 0, i32 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 2), align 4
  store i32 %12, i32* %11, align 4
  %13 = call %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %3)
  store %struct.platform_device* %13, %struct.platform_device** %2, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = call i64 @IS_ERR(%struct.platform_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = call i32 @PTR_ERR(%struct.platform_device* %18)
  store i32 %19, i32* %1, align 4
  br label %22

20:                                               ; preds = %0
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  store %struct.platform_device* %21, %struct.platform_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ipcdev, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
