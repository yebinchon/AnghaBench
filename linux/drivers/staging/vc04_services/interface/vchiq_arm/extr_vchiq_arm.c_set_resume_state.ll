; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_set_resume_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_set_resume_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_arm_state = type { i32, i32 }

@VC_SUSPEND_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_resume_state(%struct.vchiq_arm_state* %0, i32 %1) #0 {
  %3 = alloca %struct.vchiq_arm_state*, align 8
  %4 = alloca i32, align 4
  store %struct.vchiq_arm_state* %0, %struct.vchiq_arm_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %7 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %23 [
    i32 132, label %9
    i32 131, label %10
    i32 129, label %14
    i32 130, label %15
    i32 128, label %16
  ]

9:                                                ; preds = %2
  br label %25

10:                                               ; preds = %2
  %11 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %12 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %11, i32 0, i32 1
  %13 = call i32 @reinit_completion(i32* %12)
  br label %25

14:                                               ; preds = %2
  br label %25

15:                                               ; preds = %2
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %18 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %17, i32 0, i32 1
  %19 = call i32 @complete_all(i32* %18)
  %20 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %21 = load i32, i32* @VC_SUSPEND_IDLE, align 4
  %22 = call i32 @set_suspend_state(%struct.vchiq_arm_state* %20, i32 %21)
  br label %25

23:                                               ; preds = %2
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %23, %16, %15, %14, %10, %9
  ret void
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @set_suspend_state(%struct.vchiq_arm_state*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
