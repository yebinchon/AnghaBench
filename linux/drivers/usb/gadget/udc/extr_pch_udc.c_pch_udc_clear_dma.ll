; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_clear_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_clear_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_udc_dev = type { i32 }

@DMA_DIR_RX = common dso_local global i32 0, align 4
@UDC_DEVCTL_ADDR = common dso_local global i32 0, align 4
@UDC_DEVCTL_RDE = common dso_local global i32 0, align 4
@DMA_DIR_TX = common dso_local global i32 0, align 4
@UDC_DEVCTL_TDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_udc_dev*, i32)* @pch_udc_clear_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_udc_clear_dma(%struct.pch_udc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pch_udc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pch_udc_dev* %0, %struct.pch_udc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DMA_DIR_RX, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %10 = load i32, i32* @UDC_DEVCTL_ADDR, align 4
  %11 = load i32, i32* @UDC_DEVCTL_RDE, align 4
  %12 = call i32 @pch_udc_bit_clr(%struct.pch_udc_dev* %9, i32 %10, i32 %11)
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DMA_DIR_TX, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %19 = load i32, i32* @UDC_DEVCTL_ADDR, align 4
  %20 = load i32, i32* @UDC_DEVCTL_TDE, align 4
  %21 = call i32 @pch_udc_bit_clr(%struct.pch_udc_dev* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %13
  br label %23

23:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @pch_udc_bit_clr(%struct.pch_udc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
