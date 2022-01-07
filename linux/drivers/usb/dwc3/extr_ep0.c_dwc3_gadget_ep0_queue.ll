; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_gadget_ep0_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_gadget_ep0_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32 }
%struct.dwc3_request = type { i32 }
%struct.dwc3_ep = type { i32, i32, %struct.TYPE_2__, %struct.dwc3* }
%struct.TYPE_2__ = type { i32 }
%struct.dwc3 = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s: can't queue to disabled endpoint\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc3_gadget_ep0_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwc3_request*, align 8
  %8 = alloca %struct.dwc3_ep*, align 8
  %9 = alloca %struct.dwc3*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_request* %1, %struct.usb_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %13 = call %struct.dwc3_request* @to_dwc3_request(%struct.usb_request* %12)
  store %struct.dwc3_request* %13, %struct.dwc3_request** %7, align 8
  %14 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %15 = call %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep* %14)
  store %struct.dwc3_ep* %15, %struct.dwc3_ep** %8, align 8
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %17 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %16, i32 0, i32 3
  %18 = load %struct.dwc3*, %struct.dwc3** %17, align 8
  store %struct.dwc3* %18, %struct.dwc3** %9, align 8
  %19 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 0
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %24 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %3
  %29 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  %30 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %33 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ESHUTDOWN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %50

38:                                               ; preds = %3
  %39 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %40 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %39, i32 0, i32 0
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %48 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %49 = call i32 @__dwc3_gadget_ep0_queue(%struct.dwc3_ep* %47, %struct.dwc3_request* %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %43, %28
  %51 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  %52 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %51, i32 0, i32 0
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local %struct.dwc3_request* @to_dwc3_request(%struct.usb_request*) #1

declare dso_local %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__dwc3_gadget_ep0_queue(%struct.dwc3_ep*, %struct.dwc3_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
