; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_CR = common dso_local global i32 0, align 4
@CR_HCI_TXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_HCI_RXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_TXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_RXDMA_ENABLE = common dso_local global i32 0, align 4
@CR_PROTOCOL_ENABLE = common dso_local global i32 0, align 4
@CR_SCHEDULE_ENABLE = common dso_local global i32 0, align 4
@CR_MAC_TX_ENABLE = common dso_local global i32 0, align 4
@CR_MAC_RX_ENABLE = common dso_local global i32 0, align 4
@CR_SECURITY_ENABLE = common dso_local global i32 0, align 4
@CR_CALTIMER_ENABLE = common dso_local global i32 0, align 4
@REG_PAD_CTRL1 = common dso_local global i32 0, align 4
@REG_SYS_FUNC = common dso_local global i32 0, align 4
@SYS_FUNC_BBRSTB = common dso_local global i32 0, align 4
@SYS_FUNC_BB_GLB_RSTN = common dso_local global i32 0, align 4
@REG_BT_CONTROL_8723BU = common dso_local global i32 0, align 4
@REG_WLAN_ACT_CONTROL_8723B = common dso_local global i32 0, align 4
@REG_S0S1_PATH_SWITCH = common dso_local global i32 0, align 4
@REG_PWR_DATA = common dso_local global i32 0, align 4
@PWR_DATA_EEPRPAD_RFE_CTRL_EN = common dso_local global i32 0, align 4
@REG_LEDCFG0 = common dso_local global i32 0, align 4
@LEDCFG0_DPDT_SELECT = common dso_local global i32 0, align 4
@PAD_CTRL1_SW_DPDT_SEL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8723bu_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8723bu_power_on(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %7 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %8 = call i32 @rtl8xxxu_disabled_to_emu(%struct.rtl8xxxu_priv* %7)
  %9 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %10 = call i32 @rtl8723b_emu_to_active(%struct.rtl8xxxu_priv* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %102

14:                                               ; preds = %1
  %15 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %16 = load i32, i32* @REG_CR, align 4
  %17 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CR_HCI_TXDMA_ENABLE, align 4
  %19 = load i32, i32* @CR_HCI_RXDMA_ENABLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CR_TXDMA_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CR_RXDMA_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CR_PROTOCOL_ENABLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CR_SCHEDULE_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CR_MAC_TX_ENABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CR_MAC_RX_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CR_SECURITY_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CR_CALTIMER_ENABLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %40 = load i32, i32* @REG_CR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %39, i32 %40, i32 %41)
  %43 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %44 = load i32, i32* @REG_PAD_CTRL1, align 4
  %45 = add nsw i32 %44, 3
  %46 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %43, i32 %45, i32 32)
  %47 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %48 = load i32, i32* @REG_SYS_FUNC, align 4
  %49 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @SYS_FUNC_BBRSTB, align 4
  %51 = load i32, i32* @SYS_FUNC_BB_GLB_RSTN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %56 = load i32, i32* @REG_SYS_FUNC, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %55, i32 %56, i32 %57)
  %59 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %60 = load i32, i32* @REG_BT_CONTROL_8723BU, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %59, i32 %61, i32 24)
  %63 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %64 = load i32, i32* @REG_WLAN_ACT_CONTROL_8723B, align 4
  %65 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %63, i32 %64, i32 4)
  %66 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %67 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %68 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %66, i32 %67, i32 0)
  %69 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %70 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %69, i32 65032, i32 1)
  %71 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %72 = load i32, i32* @REG_PWR_DATA, align 4
  %73 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @PWR_DATA_EEPRPAD_RFE_CTRL_EN, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %78 = load i32, i32* @REG_PWR_DATA, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %77, i32 %78, i32 %79)
  %81 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %82 = load i32, i32* @REG_LEDCFG0, align 4
  %83 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @LEDCFG0_DPDT_SELECT, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %88 = load i32, i32* @REG_LEDCFG0, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %87, i32 %88, i32 %89)
  %91 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %92 = load i32, i32* @REG_PAD_CTRL1, align 4
  %93 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %91, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* @PAD_CTRL1_SW_DPDT_SEL_DATA, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %3, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %3, align 4
  %98 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %99 = load i32, i32* @REG_PAD_CTRL1, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %14, %13
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @rtl8xxxu_disabled_to_emu(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8723b_emu_to_active(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
