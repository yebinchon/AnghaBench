; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_frmovrun_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_frmovrun_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i32 }
%struct.dwc2_qtd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"--Host Channel %d Interrupt: Frame Overrun--\0A\00", align 1
@DWC2_HC_XFER_FRAME_OVERRUN = common dso_local global i32 0, align 4
@HCINTMSK_FRMOVRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_frmovrun_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_frmovrun_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  %9 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %10 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %11 = call i64 @dbg_hc(%struct.dwc2_host_chan* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %4
  %20 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %21 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %22 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %23 = call i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg* %20, %struct.dwc2_host_chan* %21, %struct.dwc2_qtd* %22)
  %24 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %25 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dwc2_hcd_get_pipe_type(i32* %27)
  switch i32 %28, label %48 [
    i32 130, label %29
    i32 131, label %29
    i32 129, label %30
    i32 128, label %36
  ]

29:                                               ; preds = %19, %19
  br label %48

30:                                               ; preds = %19
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %32 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %33 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %34 = load i32, i32* @DWC2_HC_XFER_FRAME_OVERRUN, align 4
  %35 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %31, %struct.dwc2_host_chan* %32, %struct.dwc2_qtd* %33, i32 %34)
  br label %48

36:                                               ; preds = %19
  %37 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %38 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %41 = load i32, i32* @DWC2_HC_XFER_FRAME_OVERRUN, align 4
  %42 = call i32 @dwc2_update_isoc_urb_state(%struct.dwc2_hsotg* %37, %struct.dwc2_host_chan* %38, i32 %39, %struct.dwc2_qtd* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %44 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %45 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %43, %struct.dwc2_host_chan* %44, %struct.dwc2_qtd* %45, i32 %46)
  br label %48

48:                                               ; preds = %19, %36, %30, %29
  %49 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @HCINTMSK_FRMOVRUN, align 4
  %52 = call i32 @disable_hc_int(%struct.dwc2_hsotg* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i64 @dbg_hc(%struct.dwc2_host_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_hcd_get_pipe_type(i32*) #1

declare dso_local i32 @dwc2_halt_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_update_isoc_urb_state(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @disable_hc_int(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
