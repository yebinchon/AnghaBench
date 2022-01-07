; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_read_adapter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_read_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32, i32, i32, i32, i32, i32 }
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
@HWSET_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RT_CID_DEFAULT = common dso_local global i64 0, align 8
@RT_CID_819X_HP = common dso_local global i64 0, align 8
@RT_CID_TOSHIBA = common dso_local global i64 0, align 8
@RT_CID_819X_QMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92cu_read_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92cu_read_adapter_info(%struct.ieee80211_hw* %0) #0 {
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
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @kzalloc(i32 %35, i32 %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %1
  br label %118

41:                                               ; preds = %1
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %47 = call i64 @rtl_get_hwinfo(%struct.ieee80211_hw* %42, %struct.rtl_priv* %43, i32 %44, i32* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %115

50:                                               ; preds = %41
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %52 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %53 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @_rtl92cu_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %51, i32 %54, i32* %55)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @_rtl92cu_read_board_type(%struct.ieee80211_hw* %57, i32* %58)
  %60 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %61 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %63 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RT_CID_DEFAULT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %114

67:                                               ; preds = %50
  %68 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %69 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %109 [
    i32 131, label %71
    i32 129, label %100
    i32 130, label %104
    i32 128, label %108
  ]

71:                                               ; preds = %67
  %72 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %73 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 33142
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %78 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 4156
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %83 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 5673
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i64, i64* @RT_CID_819X_HP, align 8
  %88 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %89 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %94

90:                                               ; preds = %81, %76
  %91 = load i64, i64* @RT_CID_DEFAULT, align 8
  %92 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %93 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %86
  br label %99

95:                                               ; preds = %71
  %96 = load i64, i64* @RT_CID_DEFAULT, align 8
  %97 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %98 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %94
  br label %113

100:                                              ; preds = %67
  %101 = load i64, i64* @RT_CID_TOSHIBA, align 8
  %102 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %103 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %113

104:                                              ; preds = %67
  %105 = load i64, i64* @RT_CID_819X_QMI, align 8
  %106 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %107 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %113

108:                                              ; preds = %67
  br label %109

109:                                              ; preds = %67, %108
  %110 = load i64, i64* @RT_CID_DEFAULT, align 8
  %111 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %112 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109, %104, %100, %99
  br label %114

114:                                              ; preds = %113, %50
  br label %115

115:                                              ; preds = %114, %49
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @kfree(i32* %116)
  br label %118

118:                                              ; preds = %115, %40
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @rtl_get_hwinfo(%struct.ieee80211_hw*, %struct.rtl_priv*, i32, i32*, i32*) #1

declare dso_local i32 @_rtl92cu_read_txpower_info_from_hwpg(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @_rtl92cu_read_board_type(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
