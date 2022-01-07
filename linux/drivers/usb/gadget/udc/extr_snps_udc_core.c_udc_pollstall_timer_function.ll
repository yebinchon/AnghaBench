; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_pollstall_timer_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_pollstall_timer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.udc_ep* }
%struct.udc_ep = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.timer_list = type { i32 }

@udc_stall_spinlock = common dso_local global i32 0, align 4
@udc = common dso_local global %struct.TYPE_5__* null, align 8
@UDC_EPIN_IX = common dso_local global i64 0, align 8
@UDC_EPOUT_IX = common dso_local global i64 0, align 8
@stop_pollstall_timer = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@UDC_POLLSTALL_TIMER_USECONDS = common dso_local global i32 0, align 4
@udc_pollstall_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@on_pollstall_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @udc_pollstall_timer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_pollstall_timer_function(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.udc_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @spin_lock_irq(i32* @udc_stall_spinlock)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.udc_ep*, %struct.udc_ep** %7, align 8
  %9 = load i64, i64* @UDC_EPIN_IX, align 8
  %10 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %8, i64 %9
  store %struct.udc_ep* %10, %struct.udc_ep** %3, align 8
  %11 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %12 = call i32 @udc_handle_halt_state(%struct.udc_ep* %11)
  %13 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %14 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @udc, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.udc_ep*, %struct.udc_ep** %20, align 8
  %22 = load i64, i64* @UDC_EPOUT_IX, align 8
  %23 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %21, i64 %22
  store %struct.udc_ep* %23, %struct.udc_ep** %3, align 8
  %24 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %25 = call i32 @udc_handle_halt_state(%struct.udc_ep* %24)
  %26 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %27 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i64, i64* @stop_pollstall_timer, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = load i32, i32* @UDC_POLLSTALL_TIMER_USECONDS, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sdiv i32 %41, 1000000
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %38, %43
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udc_pollstall_timer, i32 0, i32 0), align 8
  %45 = call i32 @add_timer(%struct.TYPE_4__* @udc_pollstall_timer)
  br label %46

46:                                               ; preds = %37, %34, %31
  %47 = call i32 @spin_unlock_irq(i32* @udc_stall_spinlock)
  %48 = load i64, i64* @stop_pollstall_timer, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @complete(i32* @on_pollstall_exit)
  br label %52

52:                                               ; preds = %50, %46
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @udc_handle_halt_state(%struct.udc_ep*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
