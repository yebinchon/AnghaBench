; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_hcd_start_xfer_ddma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_hcd_start_xfer_ddma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i32, %struct.dwc2_host_chan* }
%struct.dwc2_host_chan = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_hcd_start_xfer_ddma(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca %struct.dwc2_host_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %7 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %8 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %7, i32 0, i32 1
  %9 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  store %struct.dwc2_host_chan* %9, %struct.dwc2_host_chan** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %11 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %60 [
    i32 130, label %13
    i32 131, label %13
    i32 129, label %20
    i32 128, label %30
  ]

13:                                               ; preds = %2, %2
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %15 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %16 = call i32 @dwc2_init_non_isoc_dma_desc(%struct.dwc2_hsotg* %14, %struct.dwc2_qh* %15)
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %18 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %19 = call i32 @dwc2_hc_start_transfer_ddma(%struct.dwc2_hsotg* %17, %struct.dwc2_host_chan* %18)
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %22 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %23 = call i32 @dwc2_init_non_isoc_dma_desc(%struct.dwc2_hsotg* %21, %struct.dwc2_qh* %22)
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %25 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %26 = call i32 @dwc2_update_frame_list(%struct.dwc2_hsotg* %24, %struct.dwc2_qh* %25, i32 1)
  %27 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %28 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %29 = call i32 @dwc2_hc_start_transfer_ddma(%struct.dwc2_hsotg* %27, %struct.dwc2_host_chan* %28)
  br label %61

30:                                               ; preds = %2
  %31 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %32 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %37 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %38 = call i32 @dwc2_recalc_initial_desc_idx(%struct.dwc2_hsotg* %36, %struct.dwc2_qh* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %41 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dwc2_init_isoc_dma_desc(%struct.dwc2_hsotg* %40, %struct.dwc2_qh* %41, i32 %42)
  %44 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %45 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %39
  %49 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %50 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %51 = call i32 @dwc2_update_frame_list(%struct.dwc2_hsotg* %49, %struct.dwc2_qh* %50, i32 1)
  %52 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %53 = call i32 @dwc2_max_desc_num(%struct.dwc2_qh* %52)
  %54 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %55 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %57 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %58 = call i32 @dwc2_hc_start_transfer_ddma(%struct.dwc2_hsotg* %56, %struct.dwc2_host_chan* %57)
  br label %59

59:                                               ; preds = %48, %39
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %59, %20, %13
  ret void
}

declare dso_local i32 @dwc2_init_non_isoc_dma_desc(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_hc_start_transfer_ddma(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*) #1

declare dso_local i32 @dwc2_update_frame_list(%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32) #1

declare dso_local i32 @dwc2_recalc_initial_desc_idx(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @dwc2_init_isoc_dma_desc(%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32) #1

declare dso_local i32 @dwc2_max_desc_num(%struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
