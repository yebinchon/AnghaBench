; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_max_desc_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_max_desc_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_qh = type { i64, i64 }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@MAX_DMA_DESC_NUM_HS_ISOC = common dso_local global i32 0, align 4
@MAX_DMA_DESC_NUM_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_qh*)* @dwc2_max_desc_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_max_desc_num(%struct.dwc2_qh* %0) #0 {
  %2 = alloca %struct.dwc2_qh*, align 8
  store %struct.dwc2_qh* %0, %struct.dwc2_qh** %2, align 8
  %3 = load %struct.dwc2_qh*, %struct.dwc2_qh** %2, align 8
  %4 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.dwc2_qh*, %struct.dwc2_qh** %2, align 8
  %10 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_SPEED_HIGH, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @MAX_DMA_DESC_NUM_HS_ISOC, align 4
  br label %18

16:                                               ; preds = %8, %1
  %17 = load i32, i32* @MAX_DMA_DESC_NUM_GENERIC, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
