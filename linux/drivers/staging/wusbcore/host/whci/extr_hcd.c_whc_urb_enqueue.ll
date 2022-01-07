; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_hcd.c_whc_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_hcd.c_whc_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.wusbhc = type { i32 }
%struct.whc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"isochronous transfers unsupported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @whc_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whc_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wusbhc*, align 8
  %8 = alloca %struct.whc*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %10)
  store %struct.wusbhc* %11, %struct.wusbhc** %7, align 8
  %12 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %13 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %12)
  store %struct.whc* %13, %struct.whc** %8, align 8
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_pipetype(i32 %16)
  switch i32 %17, label %32 [
    i32 129, label %18
    i32 128, label %23
    i32 130, label %31
    i32 131, label %31
  ]

18:                                               ; preds = %3
  %19 = load %struct.whc*, %struct.whc** %8, align 8
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pzl_urb_enqueue(%struct.whc* %19, %struct.urb* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load %struct.whc*, %struct.whc** %8, align 8
  %25 = getelementptr inbounds %struct.whc, %struct.whc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %37

31:                                               ; preds = %3, %3
  br label %32

32:                                               ; preds = %3, %31
  %33 = load %struct.whc*, %struct.whc** %8, align 8
  %34 = load %struct.urb*, %struct.urb** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @asl_urb_enqueue(%struct.whc* %33, %struct.urb* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %32, %23, %18
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @pzl_urb_enqueue(%struct.whc*, %struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @asl_urb_enqueue(%struct.whc*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
