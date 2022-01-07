; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_cleanup_completed_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_cleanup_completed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32 }
%struct.dwc3_event_depevt = type { i32 }
%struct.dwc3_request = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*, %struct.dwc3_event_depevt*, %struct.dwc3_request*, i32)* @dwc3_gadget_ep_cleanup_completed_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_ep_cleanup_completed_request(%struct.dwc3_ep* %0, %struct.dwc3_event_depevt* %1, %struct.dwc3_request* %2, i32 %3) #0 {
  %5 = alloca %struct.dwc3_ep*, align 8
  %6 = alloca %struct.dwc3_event_depevt*, align 8
  %7 = alloca %struct.dwc3_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %5, align 8
  store %struct.dwc3_event_depevt* %1, %struct.dwc3_event_depevt** %6, align 8
  store %struct.dwc3_request* %2, %struct.dwc3_request** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %11 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %16 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %17 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @dwc3_gadget_ep_reclaim_trb_sg(%struct.dwc3_ep* %15, %struct.dwc3_request* %16, %struct.dwc3_event_depevt* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  br label %26

20:                                               ; preds = %4
  %21 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %22 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %23 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dwc3_gadget_ep_reclaim_trb_linear(%struct.dwc3_ep* %21, %struct.dwc3_request* %22, %struct.dwc3_event_depevt* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %28 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %33 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %34 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dwc3_gadget_ep_reclaim_trb_linear(%struct.dwc3_ep* %32, %struct.dwc3_request* %33, %struct.dwc3_event_depevt* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %38 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %41 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %45 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %49 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %52 = call i32 @dwc3_gadget_ep_request_completed(%struct.dwc3_request* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %39
  %55 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %56 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %61 = call i32 @__dwc3_gadget_kick_transfer(%struct.dwc3_ep* %60)
  br label %67

62:                                               ; preds = %54, %39
  %63 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %64 = load %struct.dwc3_request*, %struct.dwc3_request** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dwc3_gadget_giveback(%struct.dwc3_ep* %63, %struct.dwc3_request* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @dwc3_gadget_ep_reclaim_trb_sg(%struct.dwc3_ep*, %struct.dwc3_request*, %struct.dwc3_event_depevt*, i32) #1

declare dso_local i32 @dwc3_gadget_ep_reclaim_trb_linear(%struct.dwc3_ep*, %struct.dwc3_request*, %struct.dwc3_event_depevt*, i32) #1

declare dso_local i32 @dwc3_gadget_ep_request_completed(%struct.dwc3_request*) #1

declare dso_local i32 @__dwc3_gadget_kick_transfer(%struct.dwc3_ep*) #1

declare dso_local i32 @dwc3_gadget_giveback(%struct.dwc3_ep*, %struct.dwc3_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
