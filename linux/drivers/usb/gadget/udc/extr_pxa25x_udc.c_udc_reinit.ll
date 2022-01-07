; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_udc_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_udc_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { %struct.TYPE_5__, %struct.pxa25x_ep*, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pxa25x_ep = type { %struct.TYPE_6__, i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@EP0_IDLE = common dso_local global i32 0, align 4
@PXA_UDC_NUM_ENDPOINTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa25x_udc*)* @udc_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_reinit(%struct.pxa25x_udc* %0) #0 {
  %2 = alloca %struct.pxa25x_udc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pxa25x_ep*, align 8
  store %struct.pxa25x_udc* %0, %struct.pxa25x_udc** %2, align 8
  %5 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %6 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %10 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load i32, i32* @EP0_IDLE, align 4
  %16 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %17 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %19 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %59, %1
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @PXA_UDC_NUM_ENDPOINTS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %27 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %26, i32 0, i32 1
  %28 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %28, i64 %29
  store %struct.pxa25x_ep* %30, %struct.pxa25x_ep** %4, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %35 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %2, align 8
  %38 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i32 @list_add_tail(i32* %36, i32* %39)
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %43 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %46 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %48 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %51 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %53 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %52, i32 0, i32 0
  %54 = load %struct.pxa25x_ep*, %struct.pxa25x_ep** %4, align 8
  %55 = getelementptr inbounds %struct.pxa25x_ep, %struct.pxa25x_ep* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %53, i32 %57)
  br label %59

59:                                               ; preds = %41
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %21

62:                                               ; preds = %21
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
