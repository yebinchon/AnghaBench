; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbctlx_resptimerfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbctlx_resptimerfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timer_list = type { i32 }
%struct.hfa384x_usbctlx = type { i32 }

@resptimer = common dso_local global i32 0, align 4
@hw = common dso_local global %struct.hfa384x* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hfa384x_usbctlx_resptimerfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfa384x_usbctlx_resptimerfn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hfa384x_usbctlx*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %7 = ptrtoint %struct.hfa384x* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @resptimer, align 4
  %10 = call %struct.hfa384x* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.hfa384x* %10, %struct.hfa384x** %3, align 8
  %11 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %12 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %17 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %19 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %1
  %24 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %25 = call %struct.hfa384x_usbctlx* @get_active_ctlx(%struct.hfa384x* %24)
  store %struct.hfa384x_usbctlx* %25, %struct.hfa384x_usbctlx** %5, align 8
  %26 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %27 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %28 = call i64 @unlocked_usbctlx_cancel_async(%struct.hfa384x* %26, %struct.hfa384x_usbctlx* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %32 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %37 = call i32 @hfa384x_usbctlxq_run(%struct.hfa384x* %36)
  br label %45

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %41 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %39, %30
  ret void
}

declare dso_local %struct.hfa384x* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.hfa384x_usbctlx* @get_active_ctlx(%struct.hfa384x*) #1

declare dso_local i64 @unlocked_usbctlx_cancel_async(%struct.hfa384x*, %struct.hfa384x_usbctlx*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hfa384x_usbctlxq_run(%struct.hfa384x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
