; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_cb_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_cb_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32 }
%struct.hfa384x_usbctlx = type { i64, i32, i32 (%struct.hfa384x.0*, %struct.hfa384x_cmdresult*, i32)*, %struct.TYPE_2__ }
%struct.hfa384x.0 = type opaque
%struct.hfa384x_cmdresult = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.hfa384x_cmdresult.1 = type { i32 }

@CTLX_COMPLETE = common dso_local global i64 0, align 8
@HFA384x_CMD_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfa384x*, %struct.hfa384x_usbctlx*)* @hfa384x_cb_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfa384x_cb_status(%struct.hfa384x* %0, %struct.hfa384x_usbctlx* %1) #0 {
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca %struct.hfa384x_usbctlx*, align 8
  %5 = alloca %struct.hfa384x_cmdresult.1, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %3, align 8
  store %struct.hfa384x_usbctlx* %1, %struct.hfa384x_usbctlx** %4, align 8
  %6 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %7 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %6, i32 0, i32 2
  %8 = load i32 (%struct.hfa384x.0*, %struct.hfa384x_cmdresult*, i32)*, i32 (%struct.hfa384x.0*, %struct.hfa384x_cmdresult*, i32)** %7, align 8
  %9 = icmp ne i32 (%struct.hfa384x.0*, %struct.hfa384x_cmdresult*, i32)* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %12 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CTLX_COMPLETE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = call i32 @memset(%struct.hfa384x_cmdresult.1* %5, i32 0, i32 4)
  %18 = load i32, i32* @HFA384x_CMD_ERR, align 4
  %19 = call i32 @HFA384x_STATUS_RESULT_SET(i32 %18)
  %20 = getelementptr inbounds %struct.hfa384x_cmdresult.1, %struct.hfa384x_cmdresult.1* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  br label %26

21:                                               ; preds = %10
  %22 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %23 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @usbctlx_get_status(i32* %24, %struct.hfa384x_cmdresult.1* %5)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %28 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %27, i32 0, i32 2
  %29 = load i32 (%struct.hfa384x.0*, %struct.hfa384x_cmdresult*, i32)*, i32 (%struct.hfa384x.0*, %struct.hfa384x_cmdresult*, i32)** %28, align 8
  %30 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %31 = bitcast %struct.hfa384x* %30 to %struct.hfa384x.0*
  %32 = bitcast %struct.hfa384x_cmdresult.1* %5 to %struct.hfa384x_cmdresult*
  %33 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %4, align 8
  %34 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %29(%struct.hfa384x.0* %31, %struct.hfa384x_cmdresult* %32, i32 %35)
  br label %37

37:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @memset(%struct.hfa384x_cmdresult.1*, i32, i32) #1

declare dso_local i32 @HFA384x_STATUS_RESULT_SET(i32) #1

declare dso_local i32 @usbctlx_get_status(i32*, %struct.hfa384x_cmdresult.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
