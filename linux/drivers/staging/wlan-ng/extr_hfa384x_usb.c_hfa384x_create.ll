; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.usb_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.usb_device = type { i32 }

@hfa384x_usbctlx_reaper_task = common dso_local global i32 0, align 4
@hfa384x_usbctlx_completion_task = common dso_local global i32 0, align 4
@prism2sta_processing_defer = common dso_local global i32 0, align 4
@hfa384x_usb_defer = common dso_local global i32 0, align 4
@hfa384x_usb_throttlefn = common dso_local global i32 0, align 4
@hfa384x_usbctlx_resptimerfn = common dso_local global i32 0, align 4
@hfa384x_usbctlx_reqtimerfn = common dso_local global i32 0, align 4
@HFA384x_LINK_NOTCONNECTED = common dso_local global i32 0, align 4
@HFA384x_STATE_INIT = common dso_local global i32 0, align 4
@prism2sta_commsqual_defer = common dso_local global i32 0, align 4
@prism2sta_commsqual_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfa384x_create(%struct.hfa384x* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.hfa384x* %0, %struct.hfa384x** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %5 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %6 = call i32 @memset(%struct.hfa384x* %5, i32 0, i32 104)
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %9 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %8, i32 0, i32 19
  store %struct.usb_device* %7, %struct.usb_device** %9, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %11 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %10, i32 1)
  %12 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %13 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %12, i32 0, i32 18
  store i32 %11, i32* %13, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %15 = call i32 @usb_sndbulkpipe(%struct.usb_device* %14, i32 2)
  %16 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %17 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %16, i32 0, i32 17
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %19 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %18, i32 0, i32 16
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %22 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %21, i32 0, i32 15
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %26 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %25, i32 0, i32 15
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %30 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %29, i32 0, i32 15
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %34 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %38 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %37, i32 0, i32 15
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %42 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %41, i32 0, i32 14
  %43 = call i32 @skb_queue_head_init(i32* %42)
  %44 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %45 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %44, i32 0, i32 13
  %46 = load i32, i32* @hfa384x_usbctlx_reaper_task, align 4
  %47 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %48 = ptrtoint %struct.hfa384x* %47 to i64
  %49 = call i32 @tasklet_init(i32* %45, i32 %46, i64 %48)
  %50 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %51 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %50, i32 0, i32 12
  %52 = load i32, i32* @hfa384x_usbctlx_completion_task, align 4
  %53 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %54 = ptrtoint %struct.hfa384x* %53 to i64
  %55 = call i32 @tasklet_init(i32* %51, i32 %52, i64 %54)
  %56 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %57 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %56, i32 0, i32 11
  %58 = load i32, i32* @prism2sta_processing_defer, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  %60 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %61 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %60, i32 0, i32 10
  %62 = load i32, i32* @hfa384x_usb_defer, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %65 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %64, i32 0, i32 9
  %66 = load i32, i32* @hfa384x_usb_throttlefn, align 4
  %67 = call i32 @timer_setup(i32* %65, i32 %66, i32 0)
  %68 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %69 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %68, i32 0, i32 8
  %70 = load i32, i32* @hfa384x_usbctlx_resptimerfn, align 4
  %71 = call i32 @timer_setup(i32* %69, i32 %70, i32 0)
  %72 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %73 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %72, i32 0, i32 7
  %74 = load i32, i32* @hfa384x_usbctlx_reqtimerfn, align 4
  %75 = call i32 @timer_setup(i32* %73, i32 %74, i32 0)
  %76 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %77 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %76, i32 0, i32 6
  %78 = call i32 @usb_init_urb(i32* %77)
  %79 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %80 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %79, i32 0, i32 5
  %81 = call i32 @usb_init_urb(i32* %80)
  %82 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %83 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %82, i32 0, i32 4
  %84 = call i32 @usb_init_urb(i32* %83)
  %85 = load i32, i32* @HFA384x_LINK_NOTCONNECTED, align 4
  %86 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %87 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @HFA384x_STATE_INIT, align 4
  %89 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %90 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %92 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %91, i32 0, i32 1
  %93 = load i32, i32* @prism2sta_commsqual_defer, align 4
  %94 = call i32 @INIT_WORK(i32* %92, i32 %93)
  %95 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %96 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %95, i32 0, i32 0
  %97 = load i32, i32* @prism2sta_commsqual_timer, align 4
  %98 = call i32 @timer_setup(i32* %96, i32 %97, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.hfa384x*, i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @usb_init_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
