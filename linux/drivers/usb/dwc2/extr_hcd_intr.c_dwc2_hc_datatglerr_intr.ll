; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_datatglerr_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_datatglerr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i64 }
%struct.dwc2_qtd = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"--Host Channel %d Interrupt: Data Toggle Error--\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Data Toggle Error on OUT transfer, channel %d\0A\00", align 1
@HCINTMSK_DATATGLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_datatglerr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_datatglerr_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %10 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %15 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %20 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %29 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %30 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %31 = call i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg* %28, %struct.dwc2_host_chan* %29, %struct.dwc2_qtd* %30)
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @HCINTMSK_DATATGLERR, align 4
  %35 = call i32 @disable_hc_int(%struct.dwc2_hsotg* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*) #1

declare dso_local i32 @disable_hc_int(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
