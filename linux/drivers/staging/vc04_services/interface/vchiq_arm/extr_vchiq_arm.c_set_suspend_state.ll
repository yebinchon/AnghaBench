; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_set_suspend_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_set_suspend_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_arm_state = type { i32, i32, i32, i32 }

@VC_RESUME_RESUMED = common dso_local global i32 0, align 4
@VC_RESUME_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_suspend_state(%struct.vchiq_arm_state* %0, i32 %1) #0 {
  %3 = alloca %struct.vchiq_arm_state*, align 8
  %4 = alloca i32, align 4
  store %struct.vchiq_arm_state* %0, %struct.vchiq_arm_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %7 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %40 [
    i32 133, label %9
    i32 130, label %13
    i32 134, label %17
    i32 132, label %27
    i32 129, label %31
    i32 131, label %32
    i32 128, label %36
  ]

9:                                                ; preds = %2
  %10 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %11 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %10, i32 0, i32 1
  %12 = call i32 @complete_all(i32* %11)
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %15 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %14, i32 0, i32 1
  %16 = call i32 @complete_all(i32* %15)
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %19 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %18, i32 0, i32 1
  %20 = call i32 @complete_all(i32* %19)
  %21 = load i32, i32* @VC_RESUME_RESUMED, align 4
  %22 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %23 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %25 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %24, i32 0, i32 2
  %26 = call i32 @complete_all(i32* %25)
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %29 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %28, i32 0, i32 1
  %30 = call i32 @reinit_completion(i32* %29)
  br label %42

31:                                               ; preds = %2
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %34 = load i32, i32* @VC_RESUME_IDLE, align 4
  %35 = call i32 @set_resume_state(%struct.vchiq_arm_state* %33, i32 %34)
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %38 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %37, i32 0, i32 1
  %39 = call i32 @complete_all(i32* %38)
  br label %42

40:                                               ; preds = %2
  %41 = call i32 (...) @BUG()
  br label %42

42:                                               ; preds = %40, %36, %32, %31, %27, %17, %13, %9
  ret void
}

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @set_resume_state(%struct.vchiq_arm_state*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
