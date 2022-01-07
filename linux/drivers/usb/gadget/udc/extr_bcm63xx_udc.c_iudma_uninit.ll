; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32* }

@ENETDMA_GLB_IRQMASK_REG = common dso_local global i32 0, align 4
@BCM63XX_NUM_IUDMA = common dso_local global i32 0, align 4
@ENETDMA_CFG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*)* @iudma_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iudma_uninit(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca %struct.bcm63xx_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %2, align 8
  %4 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %5 = load i32, i32* @ENETDMA_GLB_IRQMASK_REG, align 4
  %6 = call i32 @usb_dma_writel(%struct.bcm63xx_udc* %4, i32 0, i32 %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BCM63XX_NUM_IUDMA, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %13 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %14 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @iudma_reset_channel(%struct.bcm63xx_udc* %12, i32* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %7

23:                                               ; preds = %7
  %24 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %25 = load i32, i32* @ENETDMA_CFG_REG, align 4
  %26 = call i32 @usb_dma_writel(%struct.bcm63xx_udc* %24, i32 0, i32 %25)
  ret void
}

declare dso_local i32 @usb_dma_writel(%struct.bcm63xx_udc*, i32, i32) #1

declare dso_local i32 @iudma_reset_channel(%struct.bcm63xx_udc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
