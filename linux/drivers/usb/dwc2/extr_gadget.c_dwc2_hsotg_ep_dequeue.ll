; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_ep_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_ep_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.dwc2_hsotg_req = type { i32 }
%struct.dwc2_hsotg_ep = type { %struct.TYPE_2__*, %struct.dwc2_hsotg* }
%struct.TYPE_2__ = type { %struct.usb_request }
%struct.dwc2_hsotg = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"ep_dequeue(%p,%p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*)* @dwc2_hsotg_ep_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hsotg_ep_dequeue(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca %struct.dwc2_hsotg_req*, align 8
  %7 = alloca %struct.dwc2_hsotg_ep*, align 8
  %8 = alloca %struct.dwc2_hsotg*, align 8
  %9 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_request* %1, %struct.usb_request** %5, align 8
  %10 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %11 = call %struct.dwc2_hsotg_req* @our_req(%struct.usb_request* %10)
  store %struct.dwc2_hsotg_req* %11, %struct.dwc2_hsotg_req** %6, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %13 = call %struct.dwc2_hsotg_ep* @our_ep(%struct.usb_ep* %12)
  store %struct.dwc2_hsotg_ep* %13, %struct.dwc2_hsotg_ep** %7, align 8
  %14 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %7, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %14, i32 0, i32 1
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %15, align 8
  store %struct.dwc2_hsotg* %16, %struct.dwc2_hsotg** %8, align 8
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %21 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %22 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.usb_ep* %20, %struct.usb_request* %21)
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %23, i32 0, i32 0
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %7, align 8
  %28 = load %struct.dwc2_hsotg_req*, %struct.dwc2_hsotg_req** %6, align 8
  %29 = call i32 @on_list(%struct.dwc2_hsotg_ep* %27, %struct.dwc2_hsotg_req* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  %33 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %32, i32 0, i32 0
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %2
  %39 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %40 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %7, align 8
  %41 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = icmp eq %struct.usb_request* %39, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  %47 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %7, align 8
  %48 = call i32 @dwc2_hsotg_ep_stop_xfr(%struct.dwc2_hsotg* %46, %struct.dwc2_hsotg_ep* %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  %51 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %7, align 8
  %52 = load %struct.dwc2_hsotg_req*, %struct.dwc2_hsotg_req** %6, align 8
  %53 = load i32, i32* @ECONNRESET, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @dwc2_hsotg_complete_request(%struct.dwc2_hsotg* %50, %struct.dwc2_hsotg_ep* %51, %struct.dwc2_hsotg_req* %52, i32 %54)
  %56 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %8, align 8
  %57 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %49, %31
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.dwc2_hsotg_req* @our_req(%struct.usb_request*) #1

declare dso_local %struct.dwc2_hsotg_ep* @our_ep(%struct.usb_ep*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.usb_ep*, %struct.usb_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @on_list(%struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc2_hsotg_ep_stop_xfr(%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*) #1

declare dso_local i32 @dwc2_hsotg_complete_request(%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
