; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mac.c_mt76x2u_mac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_mac.c_mt76x2u_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@MT_PBF_TX_MAX_PCNT = common dso_local global i32 0, align 4
@MT_PBF_RX_MAX_PCNT = common dso_local global i32 0, align 4
@MT_TX_LINK_CFG = common dso_local global i32 0, align 4
@MT_AUTO_RSP_CFG = common dso_local global i32 0, align 4
@MT_MAX_LEN_CFG = common dso_local global i32 0, align 4
@MT_WMM_AIFSN = common dso_local global i32 0, align 4
@MT_WMM_CWMIN = common dso_local global i32 0, align 4
@MT_WMM_CWMAX = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_RESET_CSR = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_RESET_BBP = common dso_local global i32 0, align 4
@MT_COEXCFG0 = common dso_local global i32 0, align 4
@MT_COEXCFG0_COEX_EN = common dso_local global i32 0, align 4
@MT_EXT_CCA_CFG = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x2u_mac_reset(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %3 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %4 = load i32, i32* @MT_WPDMA_GLO_CFG, align 4
  %5 = call i32 @BIT(i32 4)
  %6 = call i32 @BIT(i32 5)
  %7 = or i32 %5, %6
  %8 = call i32 @mt76_wr(%struct.mt76x02_dev* %3, i32 %4, i32 %7)
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = load i32, i32* @MT_PBF_TX_MAX_PCNT, align 4
  %11 = call i32 @mt76_wr(%struct.mt76x02_dev* %9, i32 %10, i32 -269533409)
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %13 = load i32, i32* @MT_PBF_RX_MAX_PCNT, align 4
  %14 = call i32 @mt76_wr(%struct.mt76x02_dev* %12, i32 %13, i32 65215)
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %16 = call i32 @mt76_write_mac_initvals(%struct.mt76x02_dev* %15)
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %18 = load i32, i32* @MT_TX_LINK_CFG, align 4
  %19 = call i32 @mt76_wr(%struct.mt76x02_dev* %17, i32 %18, i32 4128)
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %21 = load i32, i32* @MT_AUTO_RSP_CFG, align 4
  %22 = call i32 @mt76_wr(%struct.mt76x02_dev* %20, i32 %21, i32 19)
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %24 = load i32, i32* @MT_MAX_LEN_CFG, align 4
  %25 = call i32 @mt76_wr(%struct.mt76x02_dev* %23, i32 %24, i32 12032)
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %27 = load i32, i32* @MT_WMM_AIFSN, align 4
  %28 = call i32 @mt76_wr(%struct.mt76x02_dev* %26, i32 %27, i32 8819)
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %30 = load i32, i32* @MT_WMM_CWMIN, align 4
  %31 = call i32 @mt76_wr(%struct.mt76x02_dev* %29, i32 %30, i32 9028)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %33 = load i32, i32* @MT_WMM_CWMAX, align 4
  %34 = call i32 @mt76_wr(%struct.mt76x02_dev* %32, i32 %33, i32 13482)
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %36 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %37 = load i32, i32* @MT_MAC_SYS_CTRL_RESET_CSR, align 4
  %38 = load i32, i32* @MT_MAC_SYS_CTRL_RESET_BBP, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @mt76_clear(%struct.mt76x02_dev* %35, i32 %36, i32 %39)
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %42 = call i64 @is_mt7612(%struct.mt76x02_dev* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %46 = load i32, i32* @MT_COEXCFG0, align 4
  %47 = load i32, i32* @MT_COEXCFG0_COEX_EN, align 4
  %48 = call i32 @mt76_clear(%struct.mt76x02_dev* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %1
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %51 = load i32, i32* @MT_EXT_CCA_CFG, align 4
  %52 = call i32 @mt76_set(%struct.mt76x02_dev* %50, i32 %51, i32 61440)
  %53 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %54 = load i32, i32* @MT_TX_ALC_CFG_4, align 4
  %55 = call i32 @BIT(i32 31)
  %56 = call i32 @mt76_clear(%struct.mt76x02_dev* %53, i32 %54, i32 %55)
  %57 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %58 = call i32 @mt76x2u_mac_fixup_xtal(%struct.mt76x02_dev* %57)
  ret i32 0
}

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_write_mac_initvals(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i64 @is_mt7612(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x2u_mac_fixup_xtal(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
