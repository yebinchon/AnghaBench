; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_need_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_need_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32 }
%struct.vchiq_arm_state = type { i64, i64 }

@VC_SUSPEND_IDLE = common dso_local global i64 0, align 8
@VC_RESUME_REQUESTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vchiq_state*)* @need_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_resume(%struct.vchiq_state* %0) #0 {
  %2 = alloca %struct.vchiq_state*, align 8
  %3 = alloca %struct.vchiq_arm_state*, align 8
  store %struct.vchiq_state* %0, %struct.vchiq_state** %2, align 8
  %4 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %5 = call %struct.vchiq_arm_state* @vchiq_platform_get_arm_state(%struct.vchiq_state* %4)
  store %struct.vchiq_arm_state* %5, %struct.vchiq_arm_state** %3, align 8
  %6 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %7 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VC_SUSPEND_IDLE, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %13 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VC_RESUME_REQUESTED, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %19 = call i64 @vchiq_videocore_wanted(%struct.vchiq_state* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %11, %1
  %22 = phi i1 [ false, %11 ], [ false, %1 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local %struct.vchiq_arm_state* @vchiq_platform_get_arm_state(%struct.vchiq_state*) #1

declare dso_local i64 @vchiq_videocore_wanted(%struct.vchiq_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
