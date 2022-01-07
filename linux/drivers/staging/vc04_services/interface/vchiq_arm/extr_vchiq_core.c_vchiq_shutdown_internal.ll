; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_shutdown_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_shutdown_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32 }
%struct.vchiq_service = type { i32 }

@VCHIQ_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_shutdown_internal(%struct.vchiq_state* %0, i32 %1) #0 {
  %3 = alloca %struct.vchiq_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vchiq_service*, align 8
  %6 = alloca i32, align 4
  store %struct.vchiq_state* %0, %struct.vchiq_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %12, %2
  %8 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.vchiq_service* @next_service_by_instance(%struct.vchiq_state* %8, i32 %9, i32* %6)
  store %struct.vchiq_service* %10, %struct.vchiq_service** %5, align 8
  %11 = icmp ne %struct.vchiq_service* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %14 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vchiq_remove_service(i32 %15)
  %17 = load %struct.vchiq_service*, %struct.vchiq_service** %5, align 8
  %18 = call i32 @unlock_service(%struct.vchiq_service* %17)
  br label %7

19:                                               ; preds = %7
  %20 = load i32, i32* @VCHIQ_SUCCESS, align 4
  ret i32 %20
}

declare dso_local %struct.vchiq_service* @next_service_by_instance(%struct.vchiq_state*, i32, i32*) #1

declare dso_local i32 @vchiq_remove_service(i32) #1

declare dso_local i32 @unlock_service(%struct.vchiq_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
