; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/extr_..wa-hc.h___wa_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/extr_..wa-hc.h___wa_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@USB_REQ_GET_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wahc*)* @__wa_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__wa_get_status(%struct.wahc* %0) #0 {
  %2 = alloca %struct.wahc*, align 8
  %3 = alloca i64, align 8
  store %struct.wahc* %0, %struct.wahc** %2, align 8
  %4 = load %struct.wahc*, %struct.wahc** %2, align 8
  %5 = getelementptr inbounds %struct.wahc, %struct.wahc* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.wahc*, %struct.wahc** %2, align 8
  %8 = getelementptr inbounds %struct.wahc, %struct.wahc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @usb_rcvctrlpipe(i32 %9, i32 0)
  %11 = load i32, i32* @USB_REQ_GET_STATUS, align 4
  %12 = load i32, i32* @USB_DIR_IN, align 4
  %13 = load i32, i32* @USB_TYPE_CLASS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.wahc*, %struct.wahc** %2, align 8
  %18 = getelementptr inbounds %struct.wahc, %struct.wahc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wahc*, %struct.wahc** %2, align 8
  %26 = getelementptr inbounds %struct.wahc, %struct.wahc* %25, i32 0, i32 0
  %27 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %28 = call i64 @usb_control_msg(i32 %6, i32 %10, i32 %11, i32 %16, i32 0, i32 %24, i64* %26, i32 8, i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.wahc*, %struct.wahc** %2, align 8
  %33 = getelementptr inbounds %struct.wahc, %struct.wahc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @usb_control_msg(i32, i32, i32, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
