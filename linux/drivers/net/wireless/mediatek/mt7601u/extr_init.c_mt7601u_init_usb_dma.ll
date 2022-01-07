; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_init_usb_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_init_usb_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@MT_USB_DMA_CFG_RX_BULK_AGG_TOUT = common dso_local global i32 0, align 4
@MT_USB_AGGR_TIMEOUT = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_RX_BULK_AGG_LMT = common dso_local global i32 0, align 4
@MT_USB_AGGR_SIZE_LIMIT = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_RX_BULK_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_TX_BULK_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_RX_BULK_AGG_EN = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_UDMA_RX_WL_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*)* @mt7601u_init_usb_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_init_usb_dma(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca %struct.mt7601u_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %2, align 8
  %4 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_AGG_TOUT, align 4
  %5 = load i32, i32* @MT_USB_AGGR_TIMEOUT, align 4
  %6 = call i32 @FIELD_PREP(i32 %4, i32 %5)
  %7 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_AGG_LMT, align 4
  %8 = load i32, i32* @MT_USB_AGGR_SIZE_LIMIT, align 4
  %9 = call i32 @FIELD_PREP(i32 %7, i32 %8)
  %10 = or i32 %6, %9
  %11 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_EN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MT_USB_DMA_CFG_TX_BULK_EN, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 512
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @MT_USB_DMA_CFG_RX_BULK_AGG_EN, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %25 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @MT_USB_DMA_CFG_UDMA_RX_WL_DROP, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %32 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @MT_USB_DMA_CFG_UDMA_RX_WL_DROP, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %40 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
