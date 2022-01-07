; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_terminate_service_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_terminate_service_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i32, i32, %struct.vchiq_state* }
%struct.vchiq_state = type { i32 }

@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%d: tsi - (%d<->%d)\00", align 1
@VCHIQ_POLL_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_terminate_service_internal(%struct.vchiq_service* %0) #0 {
  %2 = alloca %struct.vchiq_service*, align 8
  %3 = alloca %struct.vchiq_state*, align 8
  store %struct.vchiq_service* %0, %struct.vchiq_service** %2, align 8
  %4 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %5 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %4, i32 0, i32 2
  %6 = load %struct.vchiq_state*, %struct.vchiq_state** %5, align 8
  store %struct.vchiq_state* %6, %struct.vchiq_state** %3, align 8
  %7 = load i32, i32* @vchiq_core_log_level, align 4
  %8 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %9 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %12 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %15 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @vchiq_log_info(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16)
  %18 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %19 = call i32 @mark_service_closing(%struct.vchiq_service* %18)
  %20 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %21 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %22 = load i32, i32* @VCHIQ_POLL_REMOVE, align 4
  %23 = call i32 @request_poll(%struct.vchiq_state* %20, %struct.vchiq_service* %21, i32 %22)
  ret void
}

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mark_service_closing(%struct.vchiq_service*) #1

declare dso_local i32 @request_poll(%struct.vchiq_state*, %struct.vchiq_service*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
