; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_get_connected_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_get_connected_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i64, i32 }
%struct.vchiq_state = type { i32, %struct.vchiq_service** }

@VCHIQ_SRVSTATE_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vchiq_service* (%struct.vchiq_state*, i32)* @get_connected_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vchiq_service* @get_connected_service(%struct.vchiq_state* %0, i32 %1) #0 {
  %3 = alloca %struct.vchiq_service*, align 8
  %4 = alloca %struct.vchiq_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vchiq_service*, align 8
  store %struct.vchiq_state* %0, %struct.vchiq_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %11 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %16 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %15, i32 0, i32 1
  %17 = load %struct.vchiq_service**, %struct.vchiq_service*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.vchiq_service*, %struct.vchiq_service** %17, i64 %19
  %21 = load %struct.vchiq_service*, %struct.vchiq_service** %20, align 8
  store %struct.vchiq_service* %21, %struct.vchiq_service** %7, align 8
  %22 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  %23 = icmp ne %struct.vchiq_service* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %14
  %25 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  %26 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VCHIQ_SRVSTATE_OPEN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  %32 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  %38 = call i32 @lock_service(%struct.vchiq_service* %37)
  %39 = load %struct.vchiq_service*, %struct.vchiq_service** %7, align 8
  store %struct.vchiq_service* %39, %struct.vchiq_service** %3, align 8
  br label %45

40:                                               ; preds = %30, %24, %14
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %8

44:                                               ; preds = %8
  store %struct.vchiq_service* null, %struct.vchiq_service** %3, align 8
  br label %45

45:                                               ; preds = %44, %36
  %46 = load %struct.vchiq_service*, %struct.vchiq_service** %3, align 8
  ret %struct.vchiq_service* %46
}

declare dso_local i32 @lock_service(%struct.vchiq_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
