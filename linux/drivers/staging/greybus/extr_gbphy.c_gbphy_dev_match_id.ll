; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gbphy_dev_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gbphy_dev_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device_id = type { i64 }
%struct.gbphy_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.gbphy_driver = type { %struct.gbphy_device_id* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gbphy_device_id* (%struct.gbphy_device*, %struct.gbphy_driver*)* @gbphy_dev_match_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gbphy_device_id* @gbphy_dev_match_id(%struct.gbphy_device* %0, %struct.gbphy_driver* %1) #0 {
  %3 = alloca %struct.gbphy_device_id*, align 8
  %4 = alloca %struct.gbphy_device*, align 8
  %5 = alloca %struct.gbphy_driver*, align 8
  %6 = alloca %struct.gbphy_device_id*, align 8
  store %struct.gbphy_device* %0, %struct.gbphy_device** %4, align 8
  store %struct.gbphy_driver* %1, %struct.gbphy_driver** %5, align 8
  %7 = load %struct.gbphy_driver*, %struct.gbphy_driver** %5, align 8
  %8 = getelementptr inbounds %struct.gbphy_driver, %struct.gbphy_driver* %7, i32 0, i32 0
  %9 = load %struct.gbphy_device_id*, %struct.gbphy_device_id** %8, align 8
  store %struct.gbphy_device_id* %9, %struct.gbphy_device_id** %6, align 8
  %10 = load %struct.gbphy_device_id*, %struct.gbphy_device_id** %6, align 8
  %11 = icmp ne %struct.gbphy_device_id* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.gbphy_device_id* null, %struct.gbphy_device_id** %3, align 8
  br label %36

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %32, %13
  %15 = load %struct.gbphy_device_id*, %struct.gbphy_device_id** %6, align 8
  %16 = getelementptr inbounds %struct.gbphy_device_id, %struct.gbphy_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.gbphy_device_id*, %struct.gbphy_device_id** %6, align 8
  %21 = getelementptr inbounds %struct.gbphy_device_id, %struct.gbphy_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %24 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %22, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load %struct.gbphy_device_id*, %struct.gbphy_device_id** %6, align 8
  store %struct.gbphy_device_id* %30, %struct.gbphy_device_id** %3, align 8
  br label %36

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.gbphy_device_id*, %struct.gbphy_device_id** %6, align 8
  %34 = getelementptr inbounds %struct.gbphy_device_id, %struct.gbphy_device_id* %33, i32 1
  store %struct.gbphy_device_id* %34, %struct.gbphy_device_id** %6, align 8
  br label %14

35:                                               ; preds = %14
  store %struct.gbphy_device_id* null, %struct.gbphy_device_id** %3, align 8
  br label %36

36:                                               ; preds = %35, %29, %12
  %37 = load %struct.gbphy_device_id*, %struct.gbphy_device_id** %3, align 8
  ret %struct.gbphy_device_id* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
