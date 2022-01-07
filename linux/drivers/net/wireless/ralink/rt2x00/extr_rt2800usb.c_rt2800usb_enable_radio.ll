; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_enable_radio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800usb.c_rt2800usb_enable_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@USB_DMA_CFG_PHY_CLEAR = common dso_local global i32 0, align 4
@USB_DMA_CFG_RX_BULK_AGG_EN = common dso_local global i32 0, align 4
@USB_DMA_CFG_RX_BULK_AGG_TIMEOUT = common dso_local global i32 0, align 4
@USB_DMA_CFG_RX_BULK_AGG_LIMIT = common dso_local global i32 0, align 4
@DATA_FRAME_SIZE = common dso_local global i32 0, align 4
@USB_DMA_CFG_RX_BULK_EN = common dso_local global i32 0, align 4
@USB_DMA_CFG_TX_BULK_EN = common dso_local global i32 0, align 4
@USB_DMA_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800usb_enable_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800usb_enable_radio(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = call i32 @rt2800_wait_wpdma_ready(%struct.rt2x00_dev* %5)
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load i32, i32* @USB_DMA_CFG_PHY_CLEAR, align 4
  %14 = call i32 @rt2x00_set_field32(i32* %4, i32 %13, i32 0)
  %15 = load i32, i32* @USB_DMA_CFG_RX_BULK_AGG_EN, align 4
  %16 = call i32 @rt2x00_set_field32(i32* %4, i32 %15, i32 0)
  %17 = load i32, i32* @USB_DMA_CFG_RX_BULK_AGG_TIMEOUT, align 4
  %18 = call i32 @rt2x00_set_field32(i32* %4, i32 %17, i32 128)
  %19 = load i32, i32* @USB_DMA_CFG_RX_BULK_AGG_LIMIT, align 4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DATA_FRAME_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 1024
  %28 = sub nsw i32 %27, 3
  %29 = call i32 @rt2x00_set_field32(i32* %4, i32 %19, i32 %28)
  %30 = load i32, i32* @USB_DMA_CFG_RX_BULK_EN, align 4
  %31 = call i32 @rt2x00_set_field32(i32* %4, i32 %30, i32 1)
  %32 = load i32, i32* @USB_DMA_CFG_TX_BULK_EN, align 4
  %33 = call i32 @rt2x00_set_field32(i32* %4, i32 %32, i32 1)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = load i32, i32* @USB_DMA_CFG, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = call i32 @rt2800_enable_radio(%struct.rt2x00_dev* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %12, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2800_wait_wpdma_ready(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_enable_radio(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
