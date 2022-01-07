; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_pci.c_mt76x0e_stop_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_pci.c_mt76x0e_stop_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TX DMA did not stop\0A\00", align 1
@MT_WPDMA_GLO_CFG_TX_DMA_EN = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_BUSY = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x0e_stop_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0e_stop_hw(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %3 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %3, i32 0, i32 1
  %5 = call i32 @cancel_delayed_work_sync(i32* %4)
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %11 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %12 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_BUSY, align 4
  %13 = call i32 @mt76_poll(%struct.mt76x02_dev* %10, i32 %11, i32 %12, i32 0, i32 1000)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %17 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %23 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %24 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_EN, align 4
  %25 = call i32 @mt76_clear(%struct.mt76x02_dev* %22, i32 %23, i32 %24)
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %27 = call i32 @mt76x0_mac_stop(%struct.mt76x02_dev* %26)
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %29 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %30 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_BUSY, align 4
  %31 = call i32 @mt76_poll(%struct.mt76x02_dev* %28, i32 %29, i32 %30, i32 0, i32 1000)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %35 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %21
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %41 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %42 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_EN, align 4
  %43 = call i32 @mt76_clear(%struct.mt76x02_dev* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x0_mac_stop(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
