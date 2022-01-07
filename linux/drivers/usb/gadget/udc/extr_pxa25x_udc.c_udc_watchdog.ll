; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_udc_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_udc_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@EP0_STALL = common dso_local global i64 0, align 8
@UDCCS0_FST = common dso_local global i32 0, align 4
@UDCCS0_SST = common dso_local global i32 0, align 4
@UDCCS0_FTF = common dso_local global i32 0, align 4
@DBG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ep0 re-stall\0A\00", align 1
@dev = common dso_local global %struct.pxa25x_udc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @udc_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pxa25x_udc*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %3, align 8
  %5 = ptrtoint %struct.pxa25x_udc* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.pxa25x_udc* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.pxa25x_udc* %8, %struct.pxa25x_udc** %3, align 8
  %9 = call i32 (...) @local_irq_disable()
  %10 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %3, align 8
  %11 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EP0_STALL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %3, align 8
  %17 = call i32 @udc_ep0_get_UDCCS(%struct.pxa25x_udc* %16)
  %18 = load i32, i32* @UDCCS0_FST, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %3, align 8
  %23 = call i32 @udc_ep0_get_UDCCS(%struct.pxa25x_udc* %22)
  %24 = load i32, i32* @UDCCS0_SST, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %3, align 8
  %29 = load i32, i32* @UDCCS0_FST, align 4
  %30 = load i32, i32* @UDCCS0_FTF, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @udc_ep0_set_UDCCS(%struct.pxa25x_udc* %28, i32 %31)
  %33 = load i32, i32* @DBG_VERBOSE, align 4
  %34 = call i32 @DBG(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %3, align 8
  %36 = call i32 @start_watchdog(%struct.pxa25x_udc* %35)
  br label %37

37:                                               ; preds = %27, %21, %15, %1
  %38 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local %struct.pxa25x_udc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @udc_ep0_get_UDCCS(%struct.pxa25x_udc*) #1

declare dso_local i32 @udc_ep0_set_UDCCS(%struct.pxa25x_udc*, i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @start_watchdog(%struct.pxa25x_udc*) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
