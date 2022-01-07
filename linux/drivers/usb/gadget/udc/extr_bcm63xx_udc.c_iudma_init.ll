; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_iudma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i32* }

@ENETDMA_CFG_EN_MASK = common dso_local global i64 0, align 8
@ENETDMA_CFG_REG = common dso_local global i32 0, align 4
@BCM63XX_NUM_IUDMA = common dso_local global i32 0, align 4
@ENETDMA_GLB_IRQMASK_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*)* @iudma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iudma_init(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm63xx_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  %6 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %7 = load i64, i64* @ENETDMA_CFG_EN_MASK, align 8
  %8 = load i32, i32* @ENETDMA_CFG_REG, align 4
  %9 = call i32 @usb_dma_writel(%struct.bcm63xx_udc* %6, i64 %7, i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BCM63XX_NUM_IUDMA, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @iudma_init_channel(%struct.bcm63xx_udc* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %14
  %23 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %24 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %25 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @iudma_reset_channel(%struct.bcm63xx_udc* %23, i32* %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %36 = load i32, i32* @BCM63XX_NUM_IUDMA, align 4
  %37 = call i64 @BIT(i32 %36)
  %38 = sub nsw i64 %37, 1
  %39 = load i32, i32* @ENETDMA_GLB_IRQMASK_REG, align 4
  %40 = call i32 @usb_dma_writel(%struct.bcm63xx_udc* %35, i64 %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @usb_dma_writel(%struct.bcm63xx_udc*, i64, i32) #1

declare dso_local i32 @iudma_init_channel(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @iudma_reset_channel(%struct.bcm63xx_udc*, i32*) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
