; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus_type.c_sdw_get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus_type.c_sdw_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_device_id = type { i64, i64 }
%struct.sdw_slave = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sdw_driver = type { %struct.sdw_device_id* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdw_device_id* (%struct.sdw_slave*, %struct.sdw_driver*)* @sdw_get_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdw_device_id* @sdw_get_device_id(%struct.sdw_slave* %0, %struct.sdw_driver* %1) #0 {
  %3 = alloca %struct.sdw_device_id*, align 8
  %4 = alloca %struct.sdw_slave*, align 8
  %5 = alloca %struct.sdw_driver*, align 8
  %6 = alloca %struct.sdw_device_id*, align 8
  store %struct.sdw_slave* %0, %struct.sdw_slave** %4, align 8
  store %struct.sdw_driver* %1, %struct.sdw_driver** %5, align 8
  %7 = load %struct.sdw_driver*, %struct.sdw_driver** %5, align 8
  %8 = getelementptr inbounds %struct.sdw_driver, %struct.sdw_driver* %7, i32 0, i32 0
  %9 = load %struct.sdw_device_id*, %struct.sdw_device_id** %8, align 8
  store %struct.sdw_device_id* %9, %struct.sdw_device_id** %6, align 8
  br label %10

10:                                               ; preds = %40, %2
  %11 = load %struct.sdw_device_id*, %struct.sdw_device_id** %6, align 8
  %12 = icmp ne %struct.sdw_device_id* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.sdw_device_id*, %struct.sdw_device_id** %6, align 8
  %15 = getelementptr inbounds %struct.sdw_device_id, %struct.sdw_device_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %43

20:                                               ; preds = %18
  %21 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %22 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sdw_device_id*, %struct.sdw_device_id** %6, align 8
  %26 = getelementptr inbounds %struct.sdw_device_id, %struct.sdw_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %20
  %30 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %31 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sdw_device_id*, %struct.sdw_device_id** %6, align 8
  %35 = getelementptr inbounds %struct.sdw_device_id, %struct.sdw_device_id* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load %struct.sdw_device_id*, %struct.sdw_device_id** %6, align 8
  store %struct.sdw_device_id* %39, %struct.sdw_device_id** %3, align 8
  br label %44

40:                                               ; preds = %29, %20
  %41 = load %struct.sdw_device_id*, %struct.sdw_device_id** %6, align 8
  %42 = getelementptr inbounds %struct.sdw_device_id, %struct.sdw_device_id* %41, i32 1
  store %struct.sdw_device_id* %42, %struct.sdw_device_id** %6, align 8
  br label %10

43:                                               ; preds = %18
  store %struct.sdw_device_id* null, %struct.sdw_device_id** %3, align 8
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.sdw_device_id*, %struct.sdw_device_id** %3, align 8
  ret %struct.sdw_device_id* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
