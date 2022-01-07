; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_get_client_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_get_client_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_get_client_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vchiq_service*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vchiq_service* @find_service_by_handle(i32 %5)
  store %struct.vchiq_service* %6, %struct.vchiq_service** %3, align 8
  %7 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %8 = icmp ne %struct.vchiq_service* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %11 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %12, %9 ], [ 0, %13 ]
  store i32 %15, i32* %4, align 4
  %16 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %17 = icmp ne %struct.vchiq_service* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  %20 = call i32 @unlock_service(%struct.vchiq_service* %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.vchiq_service* @find_service_by_handle(i32) #1

declare dso_local i32 @unlock_service(%struct.vchiq_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
