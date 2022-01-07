; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_out_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_out_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, %struct.dwc3_ep**, i32 }
%struct.dwc3_ep = type { i32 }

@DWC3_TRBCTL_CONTROL_SETUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc3_ep0_out_start(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %5 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %6 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 2
  %7 = call i32 @complete(i32* %6)
  %8 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 1
  %10 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %9, align 8
  %11 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %10, i64 0
  %12 = load %struct.dwc3_ep*, %struct.dwc3_ep** %11, align 8
  store %struct.dwc3_ep* %12, %struct.dwc3_ep** %3, align 8
  %13 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %14 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DWC3_TRBCTL_CONTROL_SETUP, align 4
  %18 = call i32 @dwc3_ep0_prepare_one_trb(%struct.dwc3_ep* %13, i32 %16, i32 8, i32 %17, i32 0)
  %19 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %20 = call i32 @dwc3_ep0_start_trans(%struct.dwc3_ep* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dwc3_ep0_prepare_one_trb(%struct.dwc3_ep*, i32, i32, i32, i32) #1

declare dso_local i32 @dwc3_ep0_start_trans(%struct.dwc3_ep*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
