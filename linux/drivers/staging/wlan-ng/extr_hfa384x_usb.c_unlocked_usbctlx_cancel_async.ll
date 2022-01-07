; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_unlocked_usbctlx_cancel_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_unlocked_usbctlx_cancel_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hfa384x_usbctlx = type { i32 }

@URB_ASYNC_UNLINK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CTLX_REQ_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x*, %struct.hfa384x_usbctlx*)* @unlocked_usbctlx_cancel_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlocked_usbctlx_cancel_async(%struct.hfa384x* %0, %struct.hfa384x_usbctlx* %1) #0 {
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca %struct.hfa384x_usbctlx*, align 8
  %5 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %3, align 8
  store %struct.hfa384x_usbctlx* %1, %struct.hfa384x_usbctlx** %4, align 8
  %6 = load i32, i32* @URB_ASYNC_UNLINK, align 4
  %7 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %8 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %6
  store i32 %11, i32* %9, align 4
  %12 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %13 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %12, i32 0, i32 0
  %14 = call i32 @usb_unlink_urb(%struct.TYPE_2__* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @EINPROGRESS, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @CTLX_REQ_FAILED, align 4
  %21 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %22 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %24 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %25 = call i32 @unlocked_usbctlx_complete(%struct.hfa384x* %23, %struct.hfa384x_usbctlx* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_2__*) #1

declare dso_local i32 @unlocked_usbctlx_complete(%struct.hfa384x*, %struct.hfa384x_usbctlx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
