; ModuleID = '/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3stor_lib.c_ps3stor_close_hv_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3stor_lib.c_ps3stor_close_hv_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ps3_system_bus_device*, i64, i64 }
%struct.ps3_system_bus_device = type { i64 }

@PS3_MATCH_ID_STOR_DISK = common dso_local global i64 0, align 8
@ps3_flash_workaround = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PS3_MATCH_ID_STOR_FLASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_system_bus_device*)* @ps3stor_close_hv_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3stor_close_hv_device(%struct.ps3_system_bus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ps3_system_bus_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %3, align 8
  %5 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %6 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PS3_MATCH_ID_STOR_DISK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 1), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 2), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  store %struct.ps3_system_bus_device* %17, %struct.ps3_system_bus_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %46

18:                                               ; preds = %13, %10, %1
  %19 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %20 = call i32 @ps3_close_hv_device(%struct.ps3_system_bus_device* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %18
  %26 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %27 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PS3_MATCH_ID_STOR_DISK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 1), align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %34 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PS3_MATCH_ID_STOR_FLASH, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 2), align 8
  %39 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 0), align 8
  %40 = icmp ne %struct.ps3_system_bus_device* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 0), align 8
  %43 = call i32 @ps3_close_hv_device(%struct.ps3_system_bus_device* %42)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 1), align 8
  store %struct.ps3_system_bus_device* null, %struct.ps3_system_bus_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 0), align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %32
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %23, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ps3_close_hv_device(%struct.ps3_system_bus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
