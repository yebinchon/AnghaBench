; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_poll_timeout_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_poll_timeout_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@poll_timeout = common dso_local global i64 0, align 8
@ap_poll_timer_lock = common dso_local global i32 0, align 4
@ap_poll_timer = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bus_type*, i8*, i64)* @poll_timeout_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @poll_timeout_store(%struct.bus_type* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bus_type* %0, %struct.bus_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %8)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %17, 120000000000
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %13, %3
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %33

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* @poll_timeout, align 8
  %24 = load i64, i64* @poll_timeout, align 8
  store i64 %24, i64* %9, align 8
  %25 = call i32 @spin_lock_bh(i32* @ap_poll_timer_lock)
  %26 = call i32 @hrtimer_cancel(i32* @ap_poll_timer)
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @hrtimer_set_expires(i32* @ap_poll_timer, i64 %27)
  %29 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %30 = call i32 @hrtimer_start_expires(i32* @ap_poll_timer, i32 %29)
  %31 = call i32 @spin_unlock_bh(i32* @ap_poll_timer_lock)
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @hrtimer_set_expires(i32*, i64) #1

declare dso_local i32 @hrtimer_start_expires(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
