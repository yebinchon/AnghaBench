; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0_init_usb_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0_init_usb_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_USB_DMA_CFG = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_RX_BULK_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_TX_BULK_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_RX_BULK_AGG_EN = common dso_local global i32 0, align 4
@MT_COM_REG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"MCU not ready\0A\00", align 1
@MT_USB_DMA_CFG_RX_DROP_OR_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x0_init_usb_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_init_usb_dma(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %4 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %5 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %6 = call i32 @mt76_rr(%struct.mt76x02_dev* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_EN, align 4
  %8 = load i32, i32* @MT_USB_DMA_CFG_TX_BULK_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_AGG_EN, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %17 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @mt76_wr(%struct.mt76x02_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %21 = load i32, i32* @MT_COM_REG0, align 4
  %22 = call i32 @mt76_rr(%struct.mt76x02_dev* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %28 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %34 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %35 = call i32 @mt76_rr(%struct.mt76x02_dev* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @MT_USB_DMA_CFG_RX_DROP_OR_PAD, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %40 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @mt76_wr(%struct.mt76x02_dev* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @MT_USB_DMA_CFG_RX_DROP_OR_PAD, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %48 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @mt76_wr(%struct.mt76x02_dev* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
