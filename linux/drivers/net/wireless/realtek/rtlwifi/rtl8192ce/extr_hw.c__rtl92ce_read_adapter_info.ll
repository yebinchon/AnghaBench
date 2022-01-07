; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_read_adapter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_read_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32, i32, i32, i32, i32 }
%struct.rtl_hal = type { i64 }

@RTL8190_EEPROM_ID = common dso_local global i32 0, align 4
@EEPROM_VID = common dso_local global i32 0, align 4
@EEPROM_DID = common dso_local global i32 0, align 4
@EEPROM_SVID = common dso_local global i32 0, align 4
@EEPROM_SMID = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR = common dso_local global i32 0, align 4
@EEPROM_CHANNELPLAN = common dso_local global i32 0, align 4
@EEPROM_VERSION = common dso_local global i32 0, align 4
@EEPROM_CUSTOMER_ID = common dso_local global i32 0, align 4
@COUNTRY_CODE_WORLD_WIDE_13 = common dso_local global i32 0, align 4
@HWSET_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RT_CID_DEFAULT = common dso_local global i64 0, align 8
@RT_CID_819X_HP = common dso_local global i64 0, align 8
@RT_CID_TOSHIBA = common dso_local global i64 0, align 8
@RT_CID_819X_QMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92ce_read_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ce_read_adapter_info(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %11)
  store %struct.rtl_efuse* %12, %struct.rtl_efuse** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %5, align 8
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* @RTL8190_EEPROM_ID, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @EEPROM_VID, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @EEPROM_DID, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @EEPROM_SVID, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @EEPROM_SMID, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @EEPROM_MAC_ADDR, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @EEPROM_CHANNELPLAN, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @EEPROM_VERSION, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @EEPROM_CUSTOMER_ID, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @COUNTRY_CODE_WORLD_WIDE_13, align 4
  store i32 %35, i32* %34, align 4
  %36 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kzalloc(i32 %36, i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %1
  br label %120

42:                                               ; preds = %1
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %48 = call i64 @rtl_get_hwinfo(%struct.ieee80211_hw* %43, %struct.rtl_priv* %44, i32 %45, i32* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %117

51:                                               ; preds = %42
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %53 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %54 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @_rtl92ce_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %52, i32 %55, i32* %56)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %59 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %60 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @rtl8192ce_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw* %58, i32 %61, i32* %62)
  %64 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %65 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RT_CID_DEFAULT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %116

69:                                               ; preds = %51
  %70 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %111 [
    i32 131, label %73
    i32 129, label %102
    i32 130, label %106
    i32 128, label %110
  ]

73:                                               ; preds = %69
  %74 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %75 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 33142
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %80 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 4156
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %85 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 5673
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i64, i64* @RT_CID_819X_HP, align 8
  %90 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %91 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %96

92:                                               ; preds = %83, %78
  %93 = load i64, i64* @RT_CID_DEFAULT, align 8
  %94 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %95 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %88
  br label %101

97:                                               ; preds = %73
  %98 = load i64, i64* @RT_CID_DEFAULT, align 8
  %99 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %100 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %96
  br label %115

102:                                              ; preds = %69
  %103 = load i64, i64* @RT_CID_TOSHIBA, align 8
  %104 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %105 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %115

106:                                              ; preds = %69
  %107 = load i64, i64* @RT_CID_819X_QMI, align 8
  %108 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %109 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %115

110:                                              ; preds = %69
  br label %111

111:                                              ; preds = %69, %110
  %112 = load i64, i64* @RT_CID_DEFAULT, align 8
  %113 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %114 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %106, %102, %101
  br label %116

116:                                              ; preds = %115, %51
  br label %117

117:                                              ; preds = %116, %50
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @kfree(i32* %118)
  br label %120

120:                                              ; preds = %117, %41
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @rtl_get_hwinfo(%struct.ieee80211_hw*, %struct.rtl_priv*, i32, i32*, i32*) #1

declare dso_local i32 @_rtl92ce_read_txpower_info_from_hwpg(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rtl8192ce_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
