; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbctlx_reqtimerfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbctlx_reqtimerfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.hfa384x_usbctlx = type { i32 }

@reqtimer = common dso_local global i32 0, align 4
@URB_ASYNC_UNLINK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CTLX_REQ_FAILED = common dso_local global i32 0, align 4
@hw = common dso_local global %struct.hfa384x* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hfa384x_usbctlx_reqtimerfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfa384x_usbctlx_reqtimerfn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hfa384x_usbctlx*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %7 = ptrtoint %struct.hfa384x* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @reqtimer, align 4
  %10 = call %struct.hfa384x* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.hfa384x* %10, %struct.hfa384x** %3, align 8
  %11 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %12 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %17 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %19 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @URB_ASYNC_UNLINK, align 4
  %25 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %26 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %31 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %30, i32 0, i32 4
  %32 = call i32 @usb_unlink_urb(%struct.TYPE_4__* %31)
  %33 = load i32, i32* @EINPROGRESS, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %23
  %37 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %38 = call %struct.hfa384x_usbctlx* @get_active_ctlx(%struct.hfa384x* %37)
  store %struct.hfa384x_usbctlx* %38, %struct.hfa384x_usbctlx** %5, align 8
  %39 = load i32, i32* @CTLX_REQ_FAILED, align 4
  %40 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %41 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %43 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %42, i32 0, i32 3
  %44 = call i64 @del_timer(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %48 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %36
  br label %50

50:                                               ; preds = %49, %23
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %53 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local %struct.hfa384x* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_4__*) #1

declare dso_local %struct.hfa384x_usbctlx* @get_active_ctlx(%struct.hfa384x*) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
