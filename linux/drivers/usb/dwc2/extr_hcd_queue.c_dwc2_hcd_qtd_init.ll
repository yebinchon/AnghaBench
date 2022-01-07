; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_hcd_qtd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_hcd_qtd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_qtd = type { i64, i64, i32, i64, i32, i32, %struct.dwc2_hcd_urb* }
%struct.dwc2_hcd_urb = type { %struct.dwc2_qtd*, i32 }

@USB_ENDPOINT_XFER_CONTROL = common dso_local global i64 0, align 8
@DWC2_HC_PID_DATA1 = common dso_local global i32 0, align 4
@DWC2_CONTROL_SETUP = common dso_local global i32 0, align 4
@DWC2_HCSPLT_XACTPOS_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_hcd_qtd_init(%struct.dwc2_qtd* %0, %struct.dwc2_hcd_urb* %1) #0 {
  %3 = alloca %struct.dwc2_qtd*, align 8
  %4 = alloca %struct.dwc2_hcd_urb*, align 8
  store %struct.dwc2_qtd* %0, %struct.dwc2_qtd** %3, align 8
  store %struct.dwc2_hcd_urb* %1, %struct.dwc2_hcd_urb** %4, align 8
  %5 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %4, align 8
  %6 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %3, align 8
  %7 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %6, i32 0, i32 6
  store %struct.dwc2_hcd_urb* %5, %struct.dwc2_hcd_urb** %7, align 8
  %8 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %4, align 8
  %9 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %8, i32 0, i32 1
  %10 = call i64 @dwc2_hcd_get_pipe_type(i32* %9)
  %11 = load i64, i64* @USB_ENDPOINT_XFER_CONTROL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @DWC2_HC_PID_DATA1, align 4
  %15 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %3, align 8
  %16 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @DWC2_CONTROL_SETUP, align 4
  %18 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %3, align 8
  %19 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %3, align 8
  %22 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @DWC2_HCSPLT_XACTPOS_ALL, align 4
  %24 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %3, align 8
  %25 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %3, align 8
  %27 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %3, align 8
  %29 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %3, align 8
  %31 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %4, align 8
  %32 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %31, i32 0, i32 0
  store %struct.dwc2_qtd* %30, %struct.dwc2_qtd** %32, align 8
  ret void
}

declare dso_local i64 @dwc2_hcd_get_pipe_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
