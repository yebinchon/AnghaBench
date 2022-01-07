; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, %struct.TYPE_5__, %struct.lpc32xx_ep* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lpc32xx_ep = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NUM_ENDPOINTS = common dso_local global i64 0, align 8
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @udc_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_reinit(%struct.lpc32xx_udc* %0) #0 {
  %2 = alloca %struct.lpc32xx_udc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lpc32xx_ep*, align 8
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %2, align 8
  %5 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %6 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %47, %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @NUM_ENDPOINTS, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %21 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %20, i32 0, i32 2
  %22 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %22, i64 %23
  store %struct.lpc32xx_ep* %24, %struct.lpc32xx_ep** %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %29 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %32 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %30, i32* %33)
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %37 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %36, i32 0, i32 3
  %38 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %39 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %37, i32 %40)
  %42 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %42, i32 0, i32 1
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %46 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %3, align 8
  br label %15

50:                                               ; preds = %15
  %51 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %52 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %53 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
