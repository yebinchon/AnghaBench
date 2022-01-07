; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_device_id = type { i64, i64, i64, i64 }
%struct.slim_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slim_device_id* (%struct.slim_device_id*, %struct.slim_device*)* @slim_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slim_device_id* @slim_match(%struct.slim_device_id* %0, %struct.slim_device* %1) #0 {
  %3 = alloca %struct.slim_device_id*, align 8
  %4 = alloca %struct.slim_device_id*, align 8
  %5 = alloca %struct.slim_device*, align 8
  store %struct.slim_device_id* %0, %struct.slim_device_id** %4, align 8
  store %struct.slim_device* %1, %struct.slim_device** %5, align 8
  br label %6

6:                                                ; preds = %56, %2
  %7 = load %struct.slim_device_id*, %struct.slim_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.slim_device_id, %struct.slim_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load %struct.slim_device_id*, %struct.slim_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.slim_device_id, %struct.slim_device_id* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ true, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %59

18:                                               ; preds = %16
  %19 = load %struct.slim_device_id*, %struct.slim_device_id** %4, align 8
  %20 = getelementptr inbounds %struct.slim_device_id, %struct.slim_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %23 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %18
  %28 = load %struct.slim_device_id*, %struct.slim_device_id** %4, align 8
  %29 = getelementptr inbounds %struct.slim_device_id, %struct.slim_device_id* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %32 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %27
  %37 = load %struct.slim_device_id*, %struct.slim_device_id** %4, align 8
  %38 = getelementptr inbounds %struct.slim_device_id, %struct.slim_device_id* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %41 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.slim_device_id*, %struct.slim_device_id** %4, align 8
  %47 = getelementptr inbounds %struct.slim_device_id, %struct.slim_device_id* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %50 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load %struct.slim_device_id*, %struct.slim_device_id** %4, align 8
  store %struct.slim_device_id* %55, %struct.slim_device_id** %3, align 8
  br label %60

56:                                               ; preds = %45, %36, %27, %18
  %57 = load %struct.slim_device_id*, %struct.slim_device_id** %4, align 8
  %58 = getelementptr inbounds %struct.slim_device_id, %struct.slim_device_id* %57, i32 1
  store %struct.slim_device_id* %58, %struct.slim_device_id** %4, align 8
  br label %6

59:                                               ; preds = %16
  store %struct.slim_device_id* null, %struct.slim_device_id** %3, align 8
  br label %60

60:                                               ; preds = %59, %54
  %61 = load %struct.slim_device_id*, %struct.slim_device_id** %3, align 8
  ret %struct.slim_device_id* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
