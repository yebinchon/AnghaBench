; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_arm_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_arm_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32 }
%struct.vchiq_arm_state = type { i64, i32, %struct.vchiq_state*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VC_RESUME_RESUMED = common dso_local global i32 0, align 4
@SUSPEND_TIMER_TIMEOUT_MS = common dso_local global i32 0, align 4
@suspend_timer_callback = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_arm_init_state(%struct.vchiq_state* %0, %struct.vchiq_arm_state* %1) #0 {
  %3 = alloca %struct.vchiq_state*, align 8
  %4 = alloca %struct.vchiq_arm_state*, align 8
  store %struct.vchiq_state* %0, %struct.vchiq_state** %3, align 8
  store %struct.vchiq_arm_state* %1, %struct.vchiq_arm_state** %4, align 8
  %5 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %6 = icmp ne %struct.vchiq_arm_state* %5, null
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %9 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %8, i32 0, i32 13
  %10 = call i32 @rwlock_init(i32* %9)
  %11 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %12 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %11, i32 0, i32 12
  %13 = call i32 @init_completion(i32* %12)
  %14 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %15 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %14, i32 0, i32 11
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  %17 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %18 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %17, i32 0, i32 10
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %21 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %20, i32 0, i32 9
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %24 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %23, i32 0, i32 8
  %25 = call i32 @init_completion(i32* %24)
  %26 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %27 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %26, i32 0, i32 7
  %28 = call i32 @init_completion(i32* %27)
  %29 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %30 = load i32, i32* @VC_RESUME_RESUMED, align 4
  %31 = call i32 @set_resume_state(%struct.vchiq_arm_state* %29, i32 %30)
  %32 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %33 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %32, i32 0, i32 6
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %36 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %35, i32 0, i32 6
  %37 = call i32 @complete_all(i32* %36)
  %38 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %39 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %38, i32 0, i32 5
  %40 = call i32 @init_completion(i32* %39)
  %41 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %42 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %41, i32 0, i32 5
  %43 = call i32 @complete_all(i32* %42)
  %44 = load i32, i32* @SUSPEND_TIMER_TIMEOUT_MS, align 4
  %45 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %46 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %48 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %50 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %51 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %50, i32 0, i32 2
  store %struct.vchiq_state* %49, %struct.vchiq_state** %51, align 8
  %52 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %53 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %52, i32 0, i32 1
  %54 = load i32, i32* @suspend_timer_callback, align 4
  %55 = call i32 @timer_setup(i32* %53, i32 %54, i32 0)
  %56 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %4, align 8
  %57 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %7, %2
  %59 = load i32, i32* @VCHIQ_SUCCESS, align 4
  ret i32 %59
}

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_resume_state(%struct.vchiq_arm_state*, i32) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
