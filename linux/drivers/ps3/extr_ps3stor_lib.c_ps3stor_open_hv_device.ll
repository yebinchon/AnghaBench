; ModuleID = '/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3stor_lib.c_ps3stor_open_hv_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3stor_lib.c_ps3stor_open_hv_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ps3_system_bus_device = type { i64 }

@PS3_MATCH_ID_STOR_FLASH = common dso_local global i64 0, align 8
@ps3_flash_workaround = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PS3_MATCH_ID_STOR_DISK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_system_bus_device*)* @ps3stor_open_hv_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3stor_open_hv_device(%struct.ps3_system_bus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ps3_system_bus_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %3, align 8
  %5 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %6 = call i32 @ps3_open_hv_device(%struct.ps3_system_bus_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %13 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PS3_MATCH_ID_STOR_FLASH, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 0), align 4
  br label %18

18:                                               ; preds = %17, %11
  %19 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %20 = getelementptr inbounds %struct.ps3_system_bus_device, %struct.ps3_system_bus_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PS3_MATCH_ID_STOR_DISK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_flash_workaround, i32 0, i32 1), align 4
  br label %25

25:                                               ; preds = %24, %18
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ps3_open_hv_device(%struct.ps3_system_bus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
