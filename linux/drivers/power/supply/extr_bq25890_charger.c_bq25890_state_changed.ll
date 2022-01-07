; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_state_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_state_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq25890_device = type { i32, %struct.bq25890_state }
%struct.bq25890_state = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq25890_device*, %struct.bq25890_state*)* @bq25890_state_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq25890_state_changed(%struct.bq25890_device* %0, %struct.bq25890_state* %1) #0 {
  %3 = alloca %struct.bq25890_device*, align 8
  %4 = alloca %struct.bq25890_state*, align 8
  %5 = alloca %struct.bq25890_state, align 8
  store %struct.bq25890_device* %0, %struct.bq25890_device** %3, align 8
  store %struct.bq25890_state* %1, %struct.bq25890_state** %4, align 8
  %6 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %7 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %10 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %9, i32 0, i32 1
  %11 = bitcast %struct.bq25890_state* %5 to i8*
  %12 = bitcast %struct.bq25890_state* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 48, i1 false)
  %13 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %14 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.bq25890_state*, %struct.bq25890_state** %4, align 8
  %19 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %57, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %5, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bq25890_state*, %struct.bq25890_state** %4, align 8
  %26 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %57, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %5, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bq25890_state*, %struct.bq25890_state** %4, align 8
  %33 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %57, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %5, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bq25890_state*, %struct.bq25890_state** %4, align 8
  %40 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %57, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %5, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.bq25890_state*, %struct.bq25890_state** %4, align 8
  %47 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %5, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.bq25890_state*, %struct.bq25890_state** %4, align 8
  %54 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br label %57

57:                                               ; preds = %50, %43, %36, %29, %22, %2
  %58 = phi i1 [ true, %43 ], [ true, %36 ], [ true, %29 ], [ true, %22 ], [ true, %2 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
