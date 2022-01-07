; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_rh_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_rh_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*)* @rh_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rh_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %6 = load %struct.urb*, %struct.urb** %5, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i64 @usb_endpoint_xfer_int(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = call i32 @rh_queue_status(%struct.usb_hcd* %13, %struct.urb* %14)
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i64 @usb_endpoint_xfer_control(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = call i32 @rh_call_control(%struct.usb_hcd* %24, %struct.urb* %25)
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %23, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @usb_endpoint_xfer_int(i32*) #1

declare dso_local i32 @rh_queue_status(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i64 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i32 @rh_call_control(%struct.usb_hcd*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
