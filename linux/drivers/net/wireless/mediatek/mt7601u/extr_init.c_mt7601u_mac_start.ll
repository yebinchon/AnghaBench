; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_mac_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_mac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }

@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_TX = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_TX_DMA_BUSY = common dso_local global i32 0, align 4
@MT_WPDMA_GLO_CFG_RX_DMA_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_CRC_ERR = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_PHY_ERR = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_PROMISC = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_VER_ERR = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_DUP = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_CFACK = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_CFEND = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_ACK = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_CTS = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_RTS = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_PSPOLL = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_BA = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_CTRL_RSV = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_mac_start(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %4 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %5 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %6 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_TX, align 4
  %7 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %4, i32 %5, i32 %6)
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %9 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %10 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_BUSY, align 4
  %11 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_BUSY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @mt76_poll(%struct.mt7601u_dev* %8, i32 %9, i32 %12, i32 0, i32 200000)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ETIMEDOUT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = load i32, i32* @MT_RX_FILTR_CFG_CRC_ERR, align 4
  %20 = load i32, i32* @MT_RX_FILTR_CFG_PHY_ERR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MT_RX_FILTR_CFG_PROMISC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MT_RX_FILTR_CFG_VER_ERR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MT_RX_FILTR_CFG_DUP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MT_RX_FILTR_CFG_CFACK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MT_RX_FILTR_CFG_CFEND, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MT_RX_FILTR_CFG_ACK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MT_RX_FILTR_CFG_CTS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MT_RX_FILTR_CFG_RTS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MT_RX_FILTR_CFG_PSPOLL, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MT_RX_FILTR_CFG_BA, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MT_RX_FILTR_CFG_CTRL_RSV, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %47 = load i32, i32* @MT_RX_FILTR_CFG, align 4
  %48 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %49 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %46, i32 %47, i32 %50)
  %52 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %53 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %54 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_TX, align 4
  %55 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_RX, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %52, i32 %53, i32 %56)
  %58 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %59 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %60 = load i32, i32* @MT_WPDMA_GLO_CFG_TX_DMA_BUSY, align 4
  %61 = load i32, i32* @MT_WPDMA_GLO_CFG_RX_DMA_BUSY, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @mt76_poll(%struct.mt7601u_dev* %58, i32 %59, i32 %62, i32 0, i32 50)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %18
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
