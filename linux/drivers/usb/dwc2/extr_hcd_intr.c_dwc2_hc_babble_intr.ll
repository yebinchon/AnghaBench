; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_babble_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_babble_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_host_chan = type { i64 }
%struct.dwc2_qtd = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"--Host Channel %d Interrupt: Babble Error--\0A\00", align 1
@DWC2_HC_XFER_BABBLE_ERR = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@HCINTMSK_BBLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_babble_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_babble_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  %9 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %16 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %17 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %18 = call i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg* %15, %struct.dwc2_host_chan* %16, %struct.dwc2_qtd* %17)
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %26 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DWC2_HC_XFER_BABBLE_ERR, align 4
  %29 = call i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg* %25, %struct.dwc2_host_chan* %26, i32 %27, i32 %28)
  br label %60

30:                                               ; preds = %4
  %31 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %32 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %38 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %39 = load i32, i32* @EOVERFLOW, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %37, %struct.dwc2_qtd* %38, i32 %40)
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %43 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %44 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %45 = load i32, i32* @DWC2_HC_XFER_BABBLE_ERR, align 4
  %46 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %42, %struct.dwc2_host_chan* %43, %struct.dwc2_qtd* %44, i32 %45)
  br label %59

47:                                               ; preds = %30
  %48 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %49 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %52 = load i32, i32* @DWC2_HC_XFER_BABBLE_ERR, align 4
  %53 = call i32 @dwc2_update_isoc_urb_state(%struct.dwc2_hsotg* %48, %struct.dwc2_host_chan* %49, i32 %50, %struct.dwc2_qtd* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %55 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %56 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %54, %struct.dwc2_host_chan* %55, %struct.dwc2_qtd* %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %36
  br label %60

60:                                               ; preds = %59, %24
  %61 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @HCINTMSK_BBLERR, align 4
  %64 = call i32 @disable_hc_int(%struct.dwc2_hsotg* %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, i32) #1

declare dso_local i32 @dwc2_host_complete(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_halt_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_update_isoc_urb_state(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @disable_hc_int(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
