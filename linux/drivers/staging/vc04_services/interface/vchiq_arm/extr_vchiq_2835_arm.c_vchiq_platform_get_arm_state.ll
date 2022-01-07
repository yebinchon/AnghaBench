; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_2835_arm.c_vchiq_platform_get_arm_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_2835_arm.c_vchiq_platform_get_arm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_arm_state = type { i32 }
%struct.vchiq_state = type { i64 }
%struct.vchiq_2835_state = type { %struct.vchiq_arm_state, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vchiq_arm_state* @vchiq_platform_get_arm_state(%struct.vchiq_state* %0) #0 {
  %2 = alloca %struct.vchiq_state*, align 8
  %3 = alloca %struct.vchiq_2835_state*, align 8
  store %struct.vchiq_state* %0, %struct.vchiq_state** %2, align 8
  %4 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %5 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.vchiq_2835_state*
  store %struct.vchiq_2835_state* %7, %struct.vchiq_2835_state** %3, align 8
  %8 = load %struct.vchiq_2835_state*, %struct.vchiq_2835_state** %3, align 8
  %9 = getelementptr inbounds %struct.vchiq_2835_state, %struct.vchiq_2835_state* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.vchiq_2835_state*, %struct.vchiq_2835_state** %3, align 8
  %16 = getelementptr inbounds %struct.vchiq_2835_state, %struct.vchiq_2835_state* %15, i32 0, i32 0
  ret %struct.vchiq_arm_state* %16
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
