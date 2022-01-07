; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_xacterr_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_xacterr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dwc2_host_chan = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dwc2_qtd = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"--Host Channel %d Interrupt: Transaction Error--\0A\00", align 1
@DWC2_HC_XFER_XACT_ERR = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@HCINTMSK_XACTERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_xacterr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_xacterr_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
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
  %14 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %16 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %17 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %18 = call i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg* %15, %struct.dwc2_host_chan* %16, %struct.dwc2_qtd* %17)
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %26 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DWC2_HC_XFER_XACT_ERR, align 4
  %29 = call i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg* %25, %struct.dwc2_host_chan* %26, i32 %27, i32 %28)
  br label %120

30:                                               ; preds = %4
  %31 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %32 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @dwc2_hcd_get_pipe_type(i32* %34)
  switch i32 %35, label %119 [
    i32 130, label %36
    i32 131, label %36
    i32 129, label %84
    i32 128, label %107
  ]

36:                                               ; preds = %30, %30
  %37 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %38 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %42 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %78, label %47

47:                                               ; preds = %36
  %48 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %49 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %52 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %55 = load i32, i32* @DWC2_HC_XFER_XACT_ERR, align 4
  %56 = call i32 @dwc2_update_urb_state_abn(%struct.dwc2_hsotg* %48, %struct.dwc2_host_chan* %49, i32 %50, %struct.TYPE_6__* %53, %struct.dwc2_qtd* %54, i32 %55)
  %57 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %58 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %61 = call i32 @dwc2_hcd_save_data_toggle(%struct.dwc2_hsotg* %57, %struct.dwc2_host_chan* %58, i32 %59, %struct.dwc2_qtd* %60)
  %62 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %63 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %47
  %67 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %68 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @USB_SPEED_HIGH, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %74 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %66, %47
  br label %78

78:                                               ; preds = %77, %36
  %79 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %80 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %81 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %82 = load i32, i32* @DWC2_HC_XFER_XACT_ERR, align 4
  %83 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %79, %struct.dwc2_host_chan* %80, %struct.dwc2_qtd* %81, i32 %82)
  br label %119

84:                                               ; preds = %30
  %85 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %86 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %90 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %84
  %94 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %95 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %100 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %93, %84
  %102 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %103 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %104 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %105 = load i32, i32* @DWC2_HC_XFER_XACT_ERR, align 4
  %106 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %102, %struct.dwc2_host_chan* %103, %struct.dwc2_qtd* %104, i32 %105)
  br label %119

107:                                              ; preds = %30
  %108 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %109 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %112 = load i32, i32* @DWC2_HC_XFER_XACT_ERR, align 4
  %113 = call i32 @dwc2_update_isoc_urb_state(%struct.dwc2_hsotg* %108, %struct.dwc2_host_chan* %109, i32 %110, %struct.dwc2_qtd* %111, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %115 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %116 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %114, %struct.dwc2_host_chan* %115, %struct.dwc2_qtd* %116, i32 %117)
  br label %119

119:                                              ; preds = %30, %107, %101, %78
  br label %120

120:                                              ; preds = %119, %24
  %121 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @HCINTMSK_XACTERR, align 4
  %124 = call i32 @disable_hc_int(%struct.dwc2_hsotg* %121, i32 %122, i32 %123)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, i32) #1

declare dso_local i32 @dwc2_hcd_get_pipe_type(i32*) #1

declare dso_local i32 @dwc2_update_urb_state_abn(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.TYPE_6__*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_hcd_save_data_toggle(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_halt_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_update_isoc_urb_state(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @disable_hc_int(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
