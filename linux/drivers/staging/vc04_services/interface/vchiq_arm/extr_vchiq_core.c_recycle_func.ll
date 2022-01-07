; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_recycle_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_recycle_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32, %struct.vchiq_shared_state* }
%struct.vchiq_shared_state = type { i32 }

@VCHIQ_MAX_SERVICES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @recycle_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recycle_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vchiq_state*, align 8
  %4 = alloca %struct.vchiq_shared_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.vchiq_state*
  store %struct.vchiq_state* %8, %struct.vchiq_state** %3, align 8
  %9 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %10 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %9, i32 0, i32 1
  %11 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %10, align 8
  store %struct.vchiq_shared_state* %11, %struct.vchiq_shared_state** %4, align 8
  %12 = load i32, i32* @VCHIQ_MAX_SERVICES, align 4
  %13 = call i32 @BITSET_SIZE(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @VCHIQ_MAX_SERVICES, align 4
  %17 = call i32 @BITSET_SIZE(i32 %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kmalloc_array(i32 %17, i32 4, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  ret i32 %24

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %26
  %27 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %28 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %27, i32 0, i32 0
  %29 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %4, align 8
  %30 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %29, i32 0, i32 0
  %31 = call i32 @remote_event_wait(i32* %28, i32* %30)
  %32 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @process_free_queue(%struct.vchiq_state* %32, i32* %33, i64 %34)
  br label %26
}

declare dso_local i32 @BITSET_SIZE(i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @remote_event_wait(i32*, i32*) #1

declare dso_local i32 @process_free_queue(%struct.vchiq_state*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
