; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iudma_ch_cfg = type { i64, i64 }
%struct.bcm63xx_udc = type { i32 }

@BCM63XX_NUM_IUDMA = common dso_local global i64 0, align 8
@iudma_defaults = common dso_local global %struct.iudma_ch_cfg* null, align 8
@USBD_EPNUM_TYPEMAP_TYPE_SHIFT = common dso_local global i64 0, align 8
@USBD_EPNUM_TYPEMAP_DMA_CH_SHIFT = common dso_local global i64 0, align 8
@USBD_EPNUM_TYPEMAP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*)* @bcm63xx_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_ep_init(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca %struct.bcm63xx_udc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iudma_ch_cfg*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @BCM63XX_NUM_IUDMA, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** @iudma_defaults, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %11, i64 %12
  store %struct.iudma_ch_cfg* %13, %struct.iudma_ch_cfg** %5, align 8
  %14 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %39

19:                                               ; preds = %10
  %20 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %21 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @bcm63xx_ep_dma_select(%struct.bcm63xx_udc* %20, i64 %23)
  %25 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USBD_EPNUM_TYPEMAP_TYPE_SHIFT, align 8
  %29 = shl i64 %27, %28
  %30 = load i64, i64* %3, align 8
  %31 = lshr i64 %30, 1
  %32 = load i64, i64* @USBD_EPNUM_TYPEMAP_DMA_CH_SHIFT, align 8
  %33 = shl i64 %31, %32
  %34 = or i64 %29, %33
  store i64 %34, i64* %4, align 8
  %35 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* @USBD_EPNUM_TYPEMAP_REG, align 4
  %38 = call i32 @usbd_writel(%struct.bcm63xx_udc* %35, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %19, %18
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %6

42:                                               ; preds = %6
  ret void
}

declare dso_local i32 @bcm63xx_ep_dma_select(%struct.bcm63xx_udc*, i64) #1

declare dso_local i32 @usbd_writel(%struct.bcm63xx_udc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
