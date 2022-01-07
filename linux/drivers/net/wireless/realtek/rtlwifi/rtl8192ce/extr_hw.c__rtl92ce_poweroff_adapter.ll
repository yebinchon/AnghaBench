; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_poweroff_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_poweroff_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.rtl_hal = type { i32 }

@REG_TXPAUSE = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i64 0, align 8
@REG_APSD_CTRL = common dso_local global i64 0, align 8
@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@REG_MCUFWDL = common dso_local global i64 0, align 8
@REG_GPIO_PIN_CTRL = common dso_local global i64 0, align 8
@BT_CSR_BC4 = common dso_local global i64 0, align 8
@BT_CSR_BC8 = common dso_local global i64 0, align 8
@REG_GPIO_IO_SEL = common dso_local global i32 0, align 4
@REG_LEDCFG0 = common dso_local global i32 0, align 4
@REG_AFE_PLL_CTRL = common dso_local global i64 0, align 8
@REG_SPS0_CTRL = common dso_local global i64 0, align 8
@REG_AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@REG_RSV_CTRL = common dso_local global i64 0, align 8
@REG_APS_FSMCO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92ce_poweroff_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ce_poweroff_adapter(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %4, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %14, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call i32 %15(%struct.ieee80211_hw* %16)
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = load i64, i64* @REG_TXPAUSE, align 8
  %20 = call i32 @rtl_write_byte(%struct.rtl_priv* %18, i64 %19, i32 255)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = load i32, i32* @RF90_PATH_A, align 4
  %23 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %24 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %21, i32 %22, i32 0, i32 %23, i32 0)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = load i64, i64* @REG_RF_CTRL, align 8
  %27 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i64 %26, i32 0)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i64, i64* @REG_APSD_CTRL, align 8
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %28, i64 %29, i32 64)
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %33 = call i32 @rtl_write_byte(%struct.rtl_priv* %31, i64 %32, i32 226)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %36 = call i32 @rtl_write_byte(%struct.rtl_priv* %34, i64 %35, i32 224)
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = load i64, i64* @REG_MCUFWDL, align 8
  %39 = call i32 @rtl_read_byte(%struct.rtl_priv* %37, i64 %38)
  %40 = call i32 @BIT(i32 7)
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = call i32 @rtl92c_firmware_selfreset(%struct.ieee80211_hw* %44)
  br label %46

46:                                               ; preds = %43, %1
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @rtl_write_byte(%struct.rtl_priv* %47, i64 %49, i32 81)
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = load i64, i64* @REG_MCUFWDL, align 8
  %53 = call i32 @rtl_write_byte(%struct.rtl_priv* %51, i64 %52, i32 0)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %55 = load i64, i64* @REG_GPIO_PIN_CTRL, align 8
  %56 = call i32 @rtl_write_dword(%struct.rtl_priv* %54, i64 %55, i32 0)
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %58 = load i64, i64* @REG_GPIO_PIN_CTRL, align 8
  %59 = call i32 @rtl_read_byte(%struct.rtl_priv* %57, i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %46
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BT_CSR_BC4, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BT_CSR_BC8, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72, %65
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i64, i64* @REG_GPIO_PIN_CTRL, align 8
  %82 = load i32, i32* %5, align 4
  %83 = shl i32 %82, 8
  %84 = or i32 15925248, %83
  %85 = call i32 @rtl_write_dword(%struct.rtl_priv* %80, i64 %81, i32 %84)
  br label %93

86:                                               ; preds = %72, %46
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %88 = load i64, i64* @REG_GPIO_PIN_CTRL, align 8
  %89 = load i32, i32* %5, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 16711680, %90
  %92 = call i32 @rtl_write_dword(%struct.rtl_priv* %87, i64 %88, i32 %91)
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %95 = load i32, i32* @REG_GPIO_IO_SEL, align 4
  %96 = call i32 @rtl_write_word(%struct.rtl_priv* %94, i32 %95, i32 1936)
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = load i32, i32* @REG_LEDCFG0, align 4
  %99 = call i32 @rtl_write_word(%struct.rtl_priv* %97, i32 %98, i32 32896)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %101 = load i64, i64* @REG_AFE_PLL_CTRL, align 8
  %102 = call i32 @rtl_write_byte(%struct.rtl_priv* %100, i64 %101, i32 128)
  %103 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %104 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @IS_81XXC_VENDOR_UMC_B_CUT(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %93
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %110 = load i64, i64* @REG_SPS0_CTRL, align 8
  %111 = call i32 @rtl_write_byte(%struct.rtl_priv* %109, i64 %110, i32 35)
  br label %112

112:                                              ; preds = %108, %93
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %114 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %120 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %121 = call i32 @rtl_read_dword(%struct.rtl_priv* %119, i64 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, 58869760
  store i32 %123, i32* %6, align 4
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %125 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @rtl_write_dword(%struct.rtl_priv* %124, i64 %125, i32 %126)
  br label %132

128:                                              ; preds = %112
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %130 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %131 = call i32 @rtl_write_dword(%struct.rtl_priv* %129, i64 %130, i32 14)
  br label %132

132:                                              ; preds = %128, %118
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %134 = load i64, i64* @REG_RSV_CTRL, align 8
  %135 = call i32 @rtl_write_byte(%struct.rtl_priv* %133, i64 %134, i32 14)
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %137 = load i64, i64* @REG_APS_FSMCO, align 8
  %138 = add nsw i64 %137, 1
  %139 = call i32 @rtl_write_byte(%struct.rtl_priv* %136, i64 %138, i32 16)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl92c_firmware_selfreset(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @IS_81XXC_VENDOR_UMC_B_CUT(i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
