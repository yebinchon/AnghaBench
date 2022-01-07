; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_start_wait_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_start_wait_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32 }
%struct.completion = type { i32 }
%struct.cxacru_timer = type { i32, %struct.urb* }

@cxacru_timeout_kill = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, %struct.completion*, i32*)* @cxacru_start_wait_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_start_wait_urb(%struct.urb* %0, %struct.completion* %1, i32* %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.completion*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cxacru_timer, align 8
  store %struct.urb* %0, %struct.urb** %4, align 8
  store %struct.completion* %1, %struct.completion** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = getelementptr inbounds %struct.cxacru_timer, %struct.cxacru_timer* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.cxacru_timer, %struct.cxacru_timer* %7, i32 0, i32 1
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  store %struct.urb* %10, %struct.urb** %9, align 8
  %11 = getelementptr inbounds %struct.cxacru_timer, %struct.cxacru_timer* %7, i32 0, i32 0
  %12 = load i32, i32* @cxacru_timeout_kill, align 4
  %13 = call i32 @timer_setup_on_stack(i32* %11, i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.cxacru_timer, %struct.cxacru_timer* %7, i32 0, i32 0
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i32, i32* @CMD_TIMEOUT, align 4
  %17 = call i64 @msecs_to_jiffies(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = call i32 @mod_timer(i32* %14, i64 %18)
  %20 = load %struct.completion*, %struct.completion** %5, align 8
  %21 = call i32 @wait_for_completion(%struct.completion* %20)
  %22 = getelementptr inbounds %struct.cxacru_timer, %struct.cxacru_timer* %7, i32 0, i32 0
  %23 = call i32 @del_timer_sync(i32* %22)
  %24 = getelementptr inbounds %struct.cxacru_timer, %struct.cxacru_timer* %7, i32 0, i32 0
  %25 = call i32 @destroy_timer_on_stack(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.urb*, %struct.urb** %4, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.urb*, %struct.urb** %4, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

declare dso_local i32 @timer_setup_on_stack(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @destroy_timer_on_stack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
