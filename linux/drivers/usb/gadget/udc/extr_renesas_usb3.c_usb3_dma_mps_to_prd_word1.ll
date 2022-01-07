; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_dma_mps_to_prd_word1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_dma_mps_to_prd_word1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@USB3_PRD1_MPS_8 = common dso_local global i32 0, align 4
@USB3_PRD1_MPS_16 = common dso_local global i32 0, align 4
@USB3_PRD1_MPS_32 = common dso_local global i32 0, align 4
@USB3_PRD1_MPS_64 = common dso_local global i32 0, align 4
@USB3_PRD1_MPS_512 = common dso_local global i32 0, align 4
@USB3_PRD1_MPS_1024 = common dso_local global i32 0, align 4
@USB3_PRD1_MPS_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3_ep*)* @usb3_dma_mps_to_prd_word1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_dma_mps_to_prd_word1(%struct.renesas_usb3_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %3, align 8
  %4 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %5 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %20 [
    i32 8, label %8
    i32 16, label %10
    i32 32, label %12
    i32 64, label %14
    i32 512, label %16
    i32 1024, label %18
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @USB3_PRD1_MPS_8, align 4
  store i32 %9, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load i32, i32* @USB3_PRD1_MPS_16, align 4
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @USB3_PRD1_MPS_32, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @USB3_PRD1_MPS_64, align 4
  store i32 %15, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @USB3_PRD1_MPS_512, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @USB3_PRD1_MPS_1024, align 4
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @USB3_PRD1_MPS_RESERVED, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %18, %16, %14, %12, %10, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
