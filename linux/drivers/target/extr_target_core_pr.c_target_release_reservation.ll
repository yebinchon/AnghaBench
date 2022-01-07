; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_target_release_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_target_release_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, i64, i32* }

@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4
@DRF_SPC2_RESERVATIONS_WITH_ISID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_release_reservation(%struct.se_device* %0) #0 {
  %2 = alloca %struct.se_device*, align 8
  store %struct.se_device* %0, %struct.se_device** %2, align 8
  %3 = load %struct.se_device*, %struct.se_device** %2, align 8
  %4 = getelementptr inbounds %struct.se_device, %struct.se_device* %3, i32 0, i32 2
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.se_device*, %struct.se_device** %2, align 8
  %8 = getelementptr inbounds %struct.se_device, %struct.se_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.se_device*, %struct.se_device** %2, align 8
  %12 = getelementptr inbounds %struct.se_device, %struct.se_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DRF_SPC2_RESERVATIONS_WITH_ISID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.se_device*, %struct.se_device** %2, align 8
  %19 = getelementptr inbounds %struct.se_device, %struct.se_device* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @DRF_SPC2_RESERVATIONS_WITH_ISID, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.se_device*, %struct.se_device** %2, align 8
  %23 = getelementptr inbounds %struct.se_device, %struct.se_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %17, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
