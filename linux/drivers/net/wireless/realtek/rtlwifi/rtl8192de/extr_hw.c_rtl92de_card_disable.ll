; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_card_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_card_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i32)* }
%struct.rtl_ps_ctl = type { i64 }
%struct.rtl_pci = type { i64 }
%struct.rtl_mac = type { i32 }

@MAC80211_NOLINK = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@RF_CHANGE_BY_PS = common dso_local global i64 0, align 8
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4
@REG_PCIE_CTRL_REG = common dso_local global i64 0, align 8
@RFPGA0_ANALOGPARAMETER4 = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@REG_APSD_CTRL = common dso_local global i64 0, align 8
@ROFDM0_TRXPATHENABLE = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@ROFDM1_TRXPATHENABLE = common dso_local global i32 0, align 4
@BDWORD = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@REG_CR = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"==> Do power off.......\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92de_card_disable(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca %struct.rtl_pci*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %11)
  store %struct.rtl_ps_ctl* %12, %struct.rtl_ps_ctl** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_pci* @rtl_pcidev(i32 %14)
  store %struct.rtl_pci* %15, %struct.rtl_pci** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %6, align 8
  %19 = load i32, i32* @MAC80211_NOLINK, align 4
  %20 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %21 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @_rtl92de_set_media_status(%struct.ieee80211_hw* %23, i32 %24)
  %26 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RF_CHANGE_BY_PS, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30, %1
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %42, align 8
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %46 = call i32 %43(%struct.ieee80211_hw* %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %30
  %48 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %49 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %50 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %48, i32 %49)
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = load i64, i64* @REG_PCIE_CTRL_REG, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @rtl_write_byte(%struct.rtl_priv* %51, i64 %53, i32 254)
  %55 = call i32 @udelay(i32 50)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %57 = load i32, i32* @RFPGA0_ANALOGPARAMETER4, align 4
  %58 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %56, i32 %57, i32 15728640, i32 15)
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %60 = load i32, i32* @RF90_PATH_A, align 4
  %61 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %62 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %59, i32 %60, i32 0, i32 %61, i32 0)
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = load i64, i64* @REG_APSD_CTRL, align 8
  %65 = call i32 @rtl_write_byte(%struct.rtl_priv* %63, i64 %64, i32 64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = load i32, i32* @ROFDM0_TRXPATHENABLE, align 4
  %68 = load i32, i32* @MASKBYTE0, align 4
  %69 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %66, i32 %67, i32 %68, i32 0)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = load i32, i32* @ROFDM1_TRXPATHENABLE, align 4
  %72 = load i32, i32* @BDWORD, align 4
  %73 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %76 = call i32 @rtl_write_byte(%struct.rtl_priv* %74, i64 %75, i32 226)
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %47
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %84 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %85 = call i32 @rtl_write_byte(%struct.rtl_priv* %83, i64 %84, i32 224)
  br label %86

86:                                               ; preds = %82, %47
  %87 = call i32 @udelay(i32 50)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = load i64, i64* @REG_PCIE_CTRL_REG, align 8
  %90 = add nsw i64 %89, 1
  %91 = call i32 @rtl_write_byte(%struct.rtl_priv* %88, i64 %90, i32 255)
  %92 = call i32 @udelay(i32 50)
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %94 = load i64, i64* @REG_CR, align 8
  %95 = call i32 @rtl_write_byte(%struct.rtl_priv* %93, i64 %94, i32 0)
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @COMP_INIT, align 4
  %98 = load i32, i32* @DBG_LOUD, align 4
  %99 = call i32 @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %101 = call i64 @rtl92d_phy_check_poweroff(%struct.ieee80211_hw* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %105 = call i32 @_rtl92de_poweroff_adapter(%struct.ieee80211_hw* %104)
  br label %106

106:                                              ; preds = %103, %86
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl92de_set_media_status(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i64 @rtl92d_phy_check_poweroff(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92de_poweroff_adapter(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
