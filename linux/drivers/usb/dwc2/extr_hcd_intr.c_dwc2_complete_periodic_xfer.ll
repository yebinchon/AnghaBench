; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_complete_periodic_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_complete_periodic_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i32 }
%struct.dwc2_qtd = type { i64 }

@TSIZ_PKTCNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32)* @dwc2_complete_periodic_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_complete_periodic_xfer(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3, i32 %4) #0 {
  %6 = alloca %struct.dwc2_hsotg*, align 8
  %7 = alloca %struct.dwc2_host_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dwc2_qtd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %6, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @HCTSIZ(i32 %13)
  %15 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %12, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %17 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %19 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @TSIZ_PKTCNT_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22, %5
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %29 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %30 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @dwc2_release_channel(%struct.dwc2_hsotg* %28, %struct.dwc2_host_chan* %29, %struct.dwc2_qtd* %30, i32 %31)
  br label %39

33:                                               ; preds = %22
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %35 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %36 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %34, %struct.dwc2_host_chan* %35, %struct.dwc2_qtd* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @HCTSIZ(i32) #1

declare dso_local i32 @dwc2_release_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_halt_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
