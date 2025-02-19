; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_lock_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_lock_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i64 }

@service_spinlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lock_service(%struct.vchiq_service* %0) #0 {
  %2 = alloca %struct.vchiq_service*, align 8
  store %struct.vchiq_service* %0, %struct.vchiq_service** %2, align 8
  %3 = call i32 @spin_lock(i32* @service_spinlock)
  %4 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %5 = icmp ne %struct.vchiq_service* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %10 = icmp ne %struct.vchiq_service* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %13 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.vchiq_service*, %struct.vchiq_service** %2, align 8
  %19 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %11, %1
  %23 = call i32 @spin_unlock(i32* @service_spinlock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
