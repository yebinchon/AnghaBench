; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_fifo_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_fifo_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iudma_ch_cfg = type { i32, i32, i32 }
%struct.bcm63xx_udc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@BCM63XX_NUM_IUDMA = common dso_local global i32 0, align 4
@iudma_defaults = common dso_local global %struct.iudma_ch_cfg* null, align 8
@USBD_RXFIFO_CONFIG_START_SHIFT = common dso_local global i32 0, align 4
@USBD_RXFIFO_CONFIG_END_SHIFT = common dso_local global i32 0, align 4
@USBD_RXFIFO_CONFIG_REG = common dso_local global i32 0, align 4
@USBD_RXFIFO_EPSIZE_REG = common dso_local global i32 0, align 4
@USBD_TXFIFO_CONFIG_START_SHIFT = common dso_local global i32 0, align 4
@USBD_TXFIFO_CONFIG_END_SHIFT = common dso_local global i32 0, align 4
@USBD_TXFIFO_CONFIG_REG = common dso_local global i32 0, align 4
@USBD_TXFIFO_EPSIZE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*)* @bcm63xx_fifo_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_fifo_setup(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca %struct.bcm63xx_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iudma_ch_cfg*, align 8
  %9 = alloca %struct.iudma_ch_cfg*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %2, align 8
  %10 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %11 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_SPEED_HIGH, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %110, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BCM63XX_NUM_IUDMA, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %113

21:                                               ; preds = %17
  %22 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** @iudma_defaults, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %22, i64 %24
  store %struct.iudma_ch_cfg* %25, %struct.iudma_ch_cfg** %8, align 8
  %26 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** @iudma_defaults, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %26, i64 %29
  store %struct.iudma_ch_cfg* %30, %struct.iudma_ch_cfg** %9, align 8
  %31 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 1
  %34 = call i32 @bcm63xx_ep_dma_select(%struct.bcm63xx_udc* %31, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @USBD_RXFIFO_CONFIG_START_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %8, align 8
  %40 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* @USBD_RXFIFO_CONFIG_END_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %37, %45
  store i32 %46, i32* %5, align 4
  %47 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %8, align 8
  %48 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @USBD_RXFIFO_CONFIG_REG, align 4
  %55 = call i32 @usbd_writel(%struct.bcm63xx_udc* %52, i32 %53, i32 %54)
  %56 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %21
  %60 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %8, align 8
  %61 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  br label %67

63:                                               ; preds = %21
  %64 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %8, align 8
  %65 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i32 [ %62, %59 ], [ %66, %63 ]
  %69 = load i32, i32* @USBD_RXFIFO_EPSIZE_REG, align 4
  %70 = call i32 @usbd_writel(%struct.bcm63xx_udc* %56, i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @USBD_TXFIFO_CONFIG_START_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %9, align 8
  %76 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* @USBD_TXFIFO_CONFIG_END_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %73, %81
  store i32 %82, i32* %5, align 4
  %83 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %9, align 8
  %84 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @USBD_TXFIFO_CONFIG_REG, align 4
  %91 = call i32 @usbd_writel(%struct.bcm63xx_udc* %88, i32 %89, i32 %90)
  %92 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %67
  %96 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %9, align 8
  %97 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  br label %103

99:                                               ; preds = %67
  %100 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %9, align 8
  %101 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i32 [ %98, %95 ], [ %102, %99 ]
  %105 = load i32, i32* @USBD_TXFIFO_EPSIZE_REG, align 4
  %106 = call i32 @usbd_writel(%struct.bcm63xx_udc* %92, i32 %104, i32 %105)
  %107 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %108 = load i32, i32* @USBD_TXFIFO_EPSIZE_REG, align 4
  %109 = call i32 @usbd_readl(%struct.bcm63xx_udc* %107, i32 %108)
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %4, align 4
  br label %17

113:                                              ; preds = %17
  ret void
}

declare dso_local i32 @bcm63xx_ep_dma_select(%struct.bcm63xx_udc*, i32) #1

declare dso_local i32 @usbd_writel(%struct.bcm63xx_udc*, i32, i32) #1

declare dso_local i32 @usbd_readl(%struct.bcm63xx_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
