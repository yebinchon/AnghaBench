; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c___sclp_can_add_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c___sclp_can_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_req = type { i32 }

@sclp_suspend_req = common dso_local global %struct.sclp_req zeroinitializer, align 4
@sclp_init_req = common dso_local global %struct.sclp_req zeroinitializer, align 4
@sclp_suspend_state = common dso_local global i64 0, align 8
@sclp_suspend_state_running = common dso_local global i64 0, align 8
@sclp_init_state = common dso_local global i64 0, align 8
@sclp_init_state_initialized = common dso_local global i64 0, align 8
@sclp_activation_state = common dso_local global i64 0, align 8
@sclp_activation_state_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_req*)* @__sclp_can_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sclp_can_add_request(%struct.sclp_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_req*, align 8
  store %struct.sclp_req* %0, %struct.sclp_req** %3, align 8
  %4 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %5 = icmp eq %struct.sclp_req* %4, @sclp_suspend_req
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %8 = icmp eq %struct.sclp_req* %7, @sclp_init_req
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %1
  store i32 1, i32* %2, align 4
  br label %26

10:                                               ; preds = %6
  %11 = load i64, i64* @sclp_suspend_state, align 8
  %12 = load i64, i64* @sclp_suspend_state_running, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %26

15:                                               ; preds = %10
  %16 = load i64, i64* @sclp_init_state, align 8
  %17 = load i64, i64* @sclp_init_state_initialized, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %26

20:                                               ; preds = %15
  %21 = load i64, i64* @sclp_activation_state, align 8
  %22 = load i64, i64* @sclp_activation_state_active, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %19, %14, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
