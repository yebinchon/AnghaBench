; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_remove_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_remove_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32 }
%struct.dwc3_ep = type { i32, i32, i32 }
%struct.dwc3_request = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_ep*)* @dwc3_remove_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_remove_requests(%struct.dwc3* %0, %struct.dwc3_ep* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca %struct.dwc3_request*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_ep* %1, %struct.dwc3_ep** %4, align 8
  %6 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %7 = call i32 @dwc3_stop_active_transfer(%struct.dwc3_ep* %6, i32 1, i32 0)
  br label %8

8:                                                ; preds = %14, %2
  %9 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %10 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %9, i32 0, i32 2
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %16 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %15, i32 0, i32 2
  %17 = call %struct.dwc3_request* @next_request(i32* %16)
  store %struct.dwc3_request* %17, %struct.dwc3_request** %5, align 8
  %18 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %19 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %20 = load i32, i32* @ESHUTDOWN, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @dwc3_gadget_giveback(%struct.dwc3_ep* %18, %struct.dwc3_request* %19, i32 %21)
  br label %8

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %30, %23
  %25 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %26 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %25, i32 0, i32 1
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %32 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %31, i32 0, i32 1
  %33 = call %struct.dwc3_request* @next_request(i32* %32)
  store %struct.dwc3_request* %33, %struct.dwc3_request** %5, align 8
  %34 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %35 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %36 = load i32, i32* @ESHUTDOWN, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @dwc3_gadget_giveback(%struct.dwc3_ep* %34, %struct.dwc3_request* %35, i32 %37)
  br label %24

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %46, %39
  %41 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %42 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %41, i32 0, i32 0
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %48 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %47, i32 0, i32 0
  %49 = call %struct.dwc3_request* @next_request(i32* %48)
  store %struct.dwc3_request* %49, %struct.dwc3_request** %5, align 8
  %50 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %51 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %52 = load i32, i32* @ESHUTDOWN, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @dwc3_gadget_giveback(%struct.dwc3_ep* %50, %struct.dwc3_request* %51, i32 %53)
  br label %40

55:                                               ; preds = %40
  ret void
}

declare dso_local i32 @dwc3_stop_active_transfer(%struct.dwc3_ep*, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.dwc3_request* @next_request(i32*) #1

declare dso_local i32 @dwc3_gadget_giveback(%struct.dwc3_ep*, %struct.dwc3_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
