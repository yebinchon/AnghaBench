; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/superhyway/extr_superhyway.c_superhyway_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/superhyway/extr_superhyway.c_superhyway_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superhyway_device_id = type { i64 }
%struct.superhyway_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.superhyway_device_id* (%struct.superhyway_device_id*, %struct.superhyway_device*)* @superhyway_match_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.superhyway_device_id* @superhyway_match_id(%struct.superhyway_device_id* %0, %struct.superhyway_device* %1) #0 {
  %3 = alloca %struct.superhyway_device_id*, align 8
  %4 = alloca %struct.superhyway_device_id*, align 8
  %5 = alloca %struct.superhyway_device*, align 8
  store %struct.superhyway_device_id* %0, %struct.superhyway_device_id** %4, align 8
  store %struct.superhyway_device* %1, %struct.superhyway_device** %5, align 8
  br label %6

6:                                                ; preds = %22, %2
  %7 = load %struct.superhyway_device_id*, %struct.superhyway_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.superhyway_device_id, %struct.superhyway_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load %struct.superhyway_device_id*, %struct.superhyway_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.superhyway_device_id, %struct.superhyway_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.superhyway_device*, %struct.superhyway_device** %5, align 8
  %16 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load %struct.superhyway_device_id*, %struct.superhyway_device_id** %4, align 8
  store %struct.superhyway_device_id* %21, %struct.superhyway_device_id** %3, align 8
  br label %26

22:                                               ; preds = %11
  %23 = load %struct.superhyway_device_id*, %struct.superhyway_device_id** %4, align 8
  %24 = getelementptr inbounds %struct.superhyway_device_id, %struct.superhyway_device_id* %23, i32 1
  store %struct.superhyway_device_id* %24, %struct.superhyway_device_id** %4, align 8
  br label %6

25:                                               ; preds = %6
  store %struct.superhyway_device_id* null, %struct.superhyway_device_id** %3, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.superhyway_device_id*, %struct.superhyway_device_id** %3, align 8
  ret %struct.superhyway_device_id* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
