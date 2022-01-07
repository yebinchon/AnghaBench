; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_mac_pbf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_mac_pbf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_PBF_SYS_CTRL_MCU_RESET = common dso_local global i32 0, align 4
@MT_PBF_SYS_CTRL_DMA_RESET = common dso_local global i32 0, align 4
@MT_PBF_SYS_CTRL_MAC_RESET = common dso_local global i32 0, align 4
@MT_PBF_SYS_CTRL_PBF_RESET = common dso_local global i32 0, align 4
@MT_PBF_SYS_CTRL_ASY_RESET = common dso_local global i32 0, align 4
@MT_PBF_SYS_CTRL = common dso_local global i32 0, align 4
@MT_PBF_TX_MAX_PCNT = common dso_local global i32 0, align 4
@MT_PBF_RX_MAX_PCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x2_mac_pbf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2_mac_pbf_init(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %4 = load i32, i32* @MT_PBF_SYS_CTRL_MCU_RESET, align 4
  %5 = load i32, i32* @MT_PBF_SYS_CTRL_DMA_RESET, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @MT_PBF_SYS_CTRL_MAC_RESET, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MT_PBF_SYS_CTRL_PBF_RESET, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MT_PBF_SYS_CTRL_ASY_RESET, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %14 = load i32, i32* @MT_PBF_SYS_CTRL, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @mt76_set(%struct.mt76x02_dev* %13, i32 %14, i32 %15)
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %18 = load i32, i32* @MT_PBF_SYS_CTRL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mt76_clear(%struct.mt76x02_dev* %17, i32 %18, i32 %19)
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %22 = load i32, i32* @MT_PBF_TX_MAX_PCNT, align 4
  %23 = call i32 @mt76_wr(%struct.mt76x02_dev* %21, i32 %22, i32 -269533409)
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %25 = load i32, i32* @MT_PBF_RX_MAX_PCNT, align 4
  %26 = call i32 @mt76_wr(%struct.mt76x02_dev* %24, i32 %25, i32 65215)
  ret void
}

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
