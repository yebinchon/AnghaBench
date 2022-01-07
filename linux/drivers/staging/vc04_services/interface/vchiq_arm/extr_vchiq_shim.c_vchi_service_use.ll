; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_shim.c_vchi_service_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_shim.c_vchi_service_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shim_service = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchi_service_use(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.shim_service*, align 8
  store i64 %0, i64* %2, align 8
  store i32 -1, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.shim_service*
  store %struct.shim_service* %6, %struct.shim_service** %4, align 8
  %7 = load %struct.shim_service*, %struct.shim_service** %4, align 8
  %8 = icmp ne %struct.shim_service* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.shim_service*, %struct.shim_service** %4, align 8
  %11 = getelementptr inbounds %struct.shim_service, %struct.shim_service* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vchiq_use_service(i32 %12)
  %14 = call i32 @vchiq_status_to_vchi(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @vchiq_status_to_vchi(i32) #1

declare dso_local i32 @vchiq_use_service(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
