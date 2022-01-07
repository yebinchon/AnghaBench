; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_kill_all_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_kill_all_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_hsotg_ep = type { i32, i32, i32, i32* }
%struct.dwc2_hsotg_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*, i32)* @kill_all_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_all_requests(%struct.dwc2_hsotg* %0, %struct.dwc2_hsotg_ep* %1, i32 %2) #0 {
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_hsotg_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_hsotg_req*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_hsotg_ep* %1, %struct.dwc2_hsotg_ep** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %10 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  br label %11

11:                                               ; preds = %17, %3
  %12 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %12, i32 0, i32 2
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %19 = call %struct.dwc2_hsotg_req* @get_ep_head(%struct.dwc2_hsotg_ep* %18)
  store %struct.dwc2_hsotg_req* %19, %struct.dwc2_hsotg_req** %8, align 8
  %20 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %21 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %22 = load %struct.dwc2_hsotg_req*, %struct.dwc2_hsotg_req** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dwc2_hsotg_complete_request(%struct.dwc2_hsotg* %20, %struct.dwc2_hsotg_ep* %21, %struct.dwc2_hsotg_req* %22, i32 %23)
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %27 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %51

31:                                               ; preds = %25
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %33 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DTXFSTS(i32 %35)
  %37 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %32, i32 %36)
  %38 = and i32 %37, 65535
  %39 = mul nsw i32 %38, 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %47 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %48 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dwc2_hsotg_txfifo_flush(%struct.dwc2_hsotg* %46, i32 %49)
  br label %51

51:                                               ; preds = %30, %45, %31
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.dwc2_hsotg_req* @get_ep_head(%struct.dwc2_hsotg_ep*) #1

declare dso_local i32 @dwc2_hsotg_complete_request(%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_req*, i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @DTXFSTS(i32) #1

declare dso_local i32 @dwc2_hsotg_txfifo_flush(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
