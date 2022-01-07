; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_use_service_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_use_service_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i32 }

@USE_TYPE_SERVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_use_service_internal(%struct.vchiq_service* %0) #0 {
  %2 = alloca %struct.vchiq_service*, align 8
  store %struct.vchiq_service* %0, %struct.vchiq_service** %2, align 8
  %3 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %4 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %7 = load i32, i32* @USE_TYPE_SERVICE, align 4
  %8 = call i32 @vchiq_use_internal(i32 %5, %struct.vchiq_service* %6, i32 %7)
  ret i32 %8
}

declare dso_local i32 @vchiq_use_internal(i32, %struct.vchiq_service*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
