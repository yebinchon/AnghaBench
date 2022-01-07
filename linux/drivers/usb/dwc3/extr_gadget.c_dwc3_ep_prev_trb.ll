; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_ep_prev_trb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_ep_prev_trb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_trb = type { i32 }
%struct.dwc3_ep = type { %struct.dwc3_trb* }

@DWC3_TRB_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dwc3_trb* (%struct.dwc3_ep*, i32)* @dwc3_ep_prev_trb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dwc3_trb* @dwc3_ep_prev_trb(%struct.dwc3_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @DWC3_TRB_NUM, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %14 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %13, i32 0, i32 0
  %15 = load %struct.dwc3_trb*, %struct.dwc3_trb** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %15, i64 %18
  ret %struct.dwc3_trb* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
