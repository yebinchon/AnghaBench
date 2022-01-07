; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iudma_ch_cfg = type { i32, i32, i32, i32, i32 }
%struct.bcm63xx_udc = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@USBD_CSR_SETUPADDR_DEF = common dso_local global i64 0, align 8
@USBD_CSR_SETUPADDR_REG = common dso_local global i32 0, align 4
@BCM63XX_NUM_IUDMA = common dso_local global i64 0, align 8
@iudma_defaults = common dso_local global %struct.iudma_ch_cfg* null, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USBD_CSR_EP_LOG_SHIFT = common dso_local global i32 0, align 4
@USBD_CSR_EP_DIR_SHIFT = common dso_local global i32 0, align 4
@USBD_CSR_EP_TYPE_SHIFT = common dso_local global i32 0, align 4
@USBD_CSR_EP_CFG_SHIFT = common dso_local global i32 0, align 4
@USBD_CSR_EP_IFACE_SHIFT = common dso_local global i32 0, align 4
@USBD_CSR_EP_ALTIFACE_SHIFT = common dso_local global i32 0, align 4
@USBD_CSR_EP_MAXPKT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm63xx_udc*)* @bcm63xx_ep_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_ep_setup(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca %struct.bcm63xx_udc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iudma_ch_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %2, align 8
  %8 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %9 = load i64, i64* @USBD_CSR_SETUPADDR_DEF, align 8
  %10 = load i32, i32* @USBD_CSR_SETUPADDR_REG, align 4
  %11 = call i32 @usbd_writel(%struct.bcm63xx_udc* %8, i64 %9, i32 %10)
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %102, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @BCM63XX_NUM_IUDMA, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %105

16:                                               ; preds = %12
  %17 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** @iudma_defaults, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %17, i64 %18
  store %struct.iudma_ch_cfg* %19, %struct.iudma_ch_cfg** %5, align 8
  %20 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %21 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USB_SPEED_HIGH, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %34

30:                                               ; preds = %16
  %31 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %5, align 8
  %32 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %29, %26 ], [ %33, %30 ]
  store i32 %35, i32* %6, align 4
  %36 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %41 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %40, i32 0, i32 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %102

49:                                               ; preds = %34
  %50 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %51 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @usb_ep_set_maxpacket_limit(i32* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @USBD_CSR_EP_LOG_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %5, align 8
  %63 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @USBD_CSR_EP_DIR_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %61, %66
  %68 = load %struct.iudma_ch_cfg*, %struct.iudma_ch_cfg** %5, align 8
  %69 = getelementptr inbounds %struct.iudma_ch_cfg, %struct.iudma_ch_cfg* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @USBD_CSR_EP_TYPE_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %67, %72
  %74 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %75 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @USBD_CSR_EP_CFG_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %73, %78
  %80 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %81 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @USBD_CSR_EP_IFACE_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %79, %84
  %86 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %87 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @USBD_CSR_EP_ALTIFACE_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = or i32 %85, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @USBD_CSR_EP_MAXPKT_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %3, align 8
  %97 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %2, align 8
  %98 = load i64, i64* %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @USBD_CSR_EP_REG(i32 %99)
  %101 = call i32 @usbd_writel(%struct.bcm63xx_udc* %97, i64 %98, i32 %100)
  br label %102

102:                                              ; preds = %49, %48
  %103 = load i64, i64* %4, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %4, align 8
  br label %12

105:                                              ; preds = %12
  ret void
}

declare dso_local i32 @usbd_writel(%struct.bcm63xx_udc*, i64, i32) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(i32*, i32) #1

declare dso_local i32 @USBD_CSR_EP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
