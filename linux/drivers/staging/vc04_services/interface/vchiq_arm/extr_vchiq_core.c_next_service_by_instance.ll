; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_next_service_by_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_next_service_by_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i64, i64, i64 }
%struct.vchiq_state = type { i32, %struct.vchiq_service** }

@service_spinlock = common dso_local global i32 0, align 4
@VCHIQ_SRVSTATE_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vchiq_service* @next_service_by_instance(%struct.vchiq_state* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.vchiq_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vchiq_service*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vchiq_service*, align 8
  store %struct.vchiq_state* %0, %struct.vchiq_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.vchiq_service* null, %struct.vchiq_service** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 @spin_lock(i32* @service_spinlock)
  br label %13

13:                                               ; preds = %54, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %16 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %13
  %20 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %21 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %20, i32 0, i32 1
  %22 = load %struct.vchiq_service**, %struct.vchiq_service*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.vchiq_service*, %struct.vchiq_service** %22, i64 %25
  %27 = load %struct.vchiq_service*, %struct.vchiq_service** %26, align 8
  store %struct.vchiq_service* %27, %struct.vchiq_service** %9, align 8
  %28 = load %struct.vchiq_service*, %struct.vchiq_service** %9, align 8
  %29 = icmp ne %struct.vchiq_service* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %19
  %31 = load %struct.vchiq_service*, %struct.vchiq_service** %9, align 8
  %32 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.vchiq_service*, %struct.vchiq_service** %9, align 8
  %38 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.vchiq_service*, %struct.vchiq_service** %9, align 8
  store %struct.vchiq_service* %43, %struct.vchiq_service** %7, align 8
  %44 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  %45 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  %51 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %55

54:                                               ; preds = %36, %30, %19
  br label %13

55:                                               ; preds = %42, %13
  %56 = call i32 @spin_unlock(i32* @service_spinlock)
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  ret %struct.vchiq_service* %59
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
