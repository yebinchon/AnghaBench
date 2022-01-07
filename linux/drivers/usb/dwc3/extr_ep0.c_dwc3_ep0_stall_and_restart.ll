; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_stall_and_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_stall_and_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, %struct.dwc3_ep** }
%struct.dwc3_ep = type { i32, i8* }
%struct.dwc3_request = type { i32 }

@DWC3_EP_ENABLED = common dso_local global i8* null, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@EP0_SETUP_PHASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_ep0_stall_and_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_ep0_stall_and_restart(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3_request*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %5 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %6 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 2
  %7 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %6, align 8
  %8 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %7, i64 1
  %9 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  store %struct.dwc3_ep* %9, %struct.dwc3_ep** %3, align 8
  %10 = load i8*, i8** @DWC3_EP_ENABLED, align 8
  %11 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %12 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 2
  %15 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %14, align 8
  %16 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %15, i64 0
  %17 = load %struct.dwc3_ep*, %struct.dwc3_ep** %16, align 8
  store %struct.dwc3_ep* %17, %struct.dwc3_ep** %3, align 8
  %18 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %19 = call i32 @__dwc3_gadget_ep_set_halt(%struct.dwc3_ep* %18, i32 1, i32 0)
  %20 = load i8*, i8** @DWC3_EP_ENABLED, align 8
  %21 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %26 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %25, i32 0, i32 0
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %1
  %30 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %31 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %30, i32 0, i32 0
  %32 = call %struct.dwc3_request* @next_request(i32* %31)
  store %struct.dwc3_request* %32, %struct.dwc3_request** %4, align 8
  %33 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %34 = load %struct.dwc3_request*, %struct.dwc3_request** %4, align 8
  %35 = load i32, i32* @ECONNRESET, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @dwc3_gadget_giveback(%struct.dwc3_ep* %33, %struct.dwc3_request* %34, i32 %36)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load i32, i32* @EP0_SETUP_PHASE, align 4
  %40 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %43 = call i32 @dwc3_ep0_out_start(%struct.dwc3* %42)
  ret void
}

declare dso_local i32 @__dwc3_gadget_ep_set_halt(%struct.dwc3_ep*, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.dwc3_request* @next_request(i32*) #1

declare dso_local i32 @dwc3_gadget_giveback(%struct.dwc3_ep*, %struct.dwc3_request*, i32) #1

declare dso_local i32 @dwc3_ep0_out_start(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
