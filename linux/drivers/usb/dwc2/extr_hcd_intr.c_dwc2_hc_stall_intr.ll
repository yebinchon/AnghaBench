; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_stall_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_stall_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dwc2_host_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dwc2_qtd = type { %struct.dwc2_hcd_urb* }
%struct.dwc2_hcd_urb = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"--Host Channel %d Interrupt: STALL Received--\0A\00", align 1
@DWC2_HC_XFER_STALL = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@HCINTMSK_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_stall_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_stall_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  %9 = alloca %struct.dwc2_hcd_urb*, align 8
  %10 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %11 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %12 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %11, i32 0, i32 0
  %13 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %12, align 8
  store %struct.dwc2_hcd_urb* %13, %struct.dwc2_hcd_urb** %9, align 8
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %26 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DWC2_HC_XFER_STALL, align 4
  %29 = call i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg* %25, %struct.dwc2_host_chan* %26, i32 %27, i32 %28)
  br label %72

30:                                               ; preds = %4
  %31 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %32 = icmp ne %struct.dwc2_hcd_urb* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %66

34:                                               ; preds = %30
  %35 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %36 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %35, i32 0, i32 0
  %37 = call i32 @dwc2_hcd_get_pipe_type(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %43 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %44 = load i32, i32* @EPIPE, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %42, %struct.dwc2_qtd* %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %34
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51, %47
  %56 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %57 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %58 = load i32, i32* @EPIPE, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %56, %struct.dwc2_qtd* %57, i32 %59)
  %61 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %62 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %55, %51
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %68 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %69 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %70 = load i32, i32* @DWC2_HC_XFER_STALL, align 4
  %71 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %67, %struct.dwc2_host_chan* %68, %struct.dwc2_qtd* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %24
  %73 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @HCINTMSK_STALL, align 4
  %76 = call i32 @disable_hc_int(%struct.dwc2_hsotg* %73, i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, i32) #1

declare dso_local i32 @dwc2_hcd_get_pipe_type(i32*) #1

declare dso_local i32 @dwc2_host_complete(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_halt_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @disable_hc_int(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
