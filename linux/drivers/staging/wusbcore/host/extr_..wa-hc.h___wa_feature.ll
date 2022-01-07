; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/extr_..wa-hc.h___wa_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/extr_..wa-hc.h___wa_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@USB_REQ_SET_FEATURE = common dso_local global i32 0, align 4
@USB_REQ_CLEAR_FEATURE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wahc*, i32, i32)* @__wa_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_feature(%struct.wahc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wahc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wahc* %0, %struct.wahc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wahc*, %struct.wahc** %4, align 8
  %8 = getelementptr inbounds %struct.wahc, %struct.wahc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.wahc*, %struct.wahc** %4, align 8
  %11 = getelementptr inbounds %struct.wahc, %struct.wahc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @usb_sndctrlpipe(i32 %12, i32 0)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @USB_REQ_SET_FEATURE, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* @USB_DIR_OUT, align 4
  %23 = load i32, i32* @USB_TYPE_CLASS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.wahc*, %struct.wahc** %4, align 8
  %29 = getelementptr inbounds %struct.wahc, %struct.wahc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %37 = call i32 @usb_control_msg(i32 %9, i32 %13, i32 %21, i32 %26, i32 %27, i32 %35, i32* null, i32 0, i32 %36)
  ret i32 %37
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
