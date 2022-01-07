; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_chhltd_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_chhltd_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_host_chan = type { i32 }
%struct.dwc2_qtd = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"--Host Channel %d Interrupt: Channel Halted--\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_chhltd_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_chhltd_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %9 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %10 = call i64 @dbg_hc(%struct.dwc2_host_chan* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dev_vdbg(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %12, %4
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %26 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %29 = call i32 @dwc2_hc_chhltd_intr_dma(%struct.dwc2_hsotg* %25, %struct.dwc2_host_chan* %26, i32 %27, %struct.dwc2_qtd* %28)
  br label %46

30:                                               ; preds = %18
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %32 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %35 = call i32 @dwc2_halt_status_ok(%struct.dwc2_hsotg* %31, %struct.dwc2_host_chan* %32, i32 %33, %struct.dwc2_qtd* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %40 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %41 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %42 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %43 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dwc2_release_channel(%struct.dwc2_hsotg* %39, %struct.dwc2_host_chan* %40, %struct.dwc2_qtd* %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %38, %24
  ret void
}

declare dso_local i64 @dbg_hc(%struct.dwc2_host_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_hc_chhltd_intr_dma(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_halt_status_ok(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_release_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
