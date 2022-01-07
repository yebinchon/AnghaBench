; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_state_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_state_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24257_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.bq24257_state = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24257_device*, %struct.bq24257_state*)* @bq24257_state_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24257_state_changed(%struct.bq24257_device* %0, %struct.bq24257_state* %1) #0 {
  %3 = alloca %struct.bq24257_device*, align 8
  %4 = alloca %struct.bq24257_state*, align 8
  %5 = alloca i32, align 4
  store %struct.bq24257_device* %0, %struct.bq24257_device** %3, align 8
  store %struct.bq24257_state* %1, %struct.bq24257_state** %4, align 8
  %6 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %7 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %10 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.bq24257_state*, %struct.bq24257_state** %4, align 8
  %14 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %2
  %18 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %19 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.bq24257_state*, %struct.bq24257_state** %4, align 8
  %23 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %28 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bq24257_state*, %struct.bq24257_state** %4, align 8
  %32 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br label %35

35:                                               ; preds = %26, %17, %2
  %36 = phi i1 [ true, %17 ], [ true, %2 ], [ %34, %26 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load %struct.bq24257_device*, %struct.bq24257_device** %3, align 8
  %39 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
