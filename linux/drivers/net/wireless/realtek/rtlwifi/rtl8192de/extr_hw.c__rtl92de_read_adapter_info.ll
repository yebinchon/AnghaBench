; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_read_adapter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_read_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.rtl_efuse = type { i32, i8*, i32, i32* }
%struct.rtl_hal = type { i64, i32 }

@RTL8190_EEPROM_ID = common dso_local global i32 0, align 4
@EEPROM_VID = common dso_local global i32 0, align 4
@EEPROM_DID = common dso_local global i32 0, align 4
@EEPROM_SVID = common dso_local global i32 0, align 4
@EEPROM_SMID = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_MAC0_92D = common dso_local global i32 0, align 4
@EEPROM_CHANNEL_PLAN = common dso_local global i32 0, align 4
@EEPROM_VERSION = common dso_local global i32 0, align 4
@EEPROM_CUSTOMER_ID = common dso_local global i32 0, align 4
@COUNTRY_CODE_WORLD_WIDE_13 = common dso_local global i32 0, align 4
@HWSET_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_MAC1_92D = common dso_local global i32 0, align 4
@HW_VAR_ETHER_ADDR = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@COUNTRY_CODE_TELEC = common dso_local global i8* null, align 8
@COUNTRY_CODE_FCC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92de_read_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92de_read_adapter_info(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %13)
  store %struct.rtl_efuse* %14, %struct.rtl_efuse** %4, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %5, align 8
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* @RTL8190_EEPROM_ID, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @EEPROM_VID, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @EEPROM_DID, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @EEPROM_SVID, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @EEPROM_SMID, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @EEPROM_MAC_ADDR_MAC0_92D, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @EEPROM_CHANNEL_PLAN, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @EEPROM_VERSION, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @EEPROM_CUSTOMER_ID, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @COUNTRY_CODE_WORLD_WIDE_13, align 4
  store i32 %37, i32* %36, align 4
  %38 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32* @kzalloc(i32 %38, i32 %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %1
  br label %138

44:                                               ; preds = %1
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %50 = call i64 @rtl_get_hwinfo(%struct.ieee80211_hw* %45, %struct.rtl_priv* %46, i32 %47, i32* %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %135

53:                                               ; preds = %44
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = call i32 @_rtl92de_efuse_update_chip_version(%struct.ieee80211_hw* %54)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @_rtl92de_read_macphymode_and_bandtype(%struct.ieee80211_hw* %56, i32* %57)
  %59 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 6
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* @EEPROM_MAC_ADDR_MAC1_92D, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %77 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 2
  store i32 %84, i32* %7, align 4
  br label %64

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85, %53
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %92, align 8
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %95 = load i32, i32* @HW_VAR_ETHER_ADDR, align 4
  %96 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %97 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 %93(%struct.ieee80211_hw* %94, i32 %95, i32* %98)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %101 = load i32, i32* @COMP_INIT, align 4
  %102 = load i32, i32* @DBG_DMESG, align 4
  %103 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %104 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @RT_TRACE(%struct.rtl_priv* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %109 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @_rtl92de_read_txpower_info(%struct.ieee80211_hw* %107, i32 %110, i32* %111)
  %113 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %114 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %128 [
    i32 130, label %116
    i32 129, label %120
    i32 128, label %124
  ]

116:                                              ; preds = %86
  %117 = load i8*, i8** @COUNTRY_CODE_TELEC, align 8
  %118 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %119 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  br label %132

120:                                              ; preds = %86
  %121 = load i8*, i8** @COUNTRY_CODE_FCC, align 8
  %122 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %123 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %132

124:                                              ; preds = %86
  %125 = load i8*, i8** @COUNTRY_CODE_FCC, align 8
  %126 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %127 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %132

128:                                              ; preds = %86
  %129 = load i8*, i8** @COUNTRY_CODE_FCC, align 8
  %130 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %131 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %124, %120, %116
  %133 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %134 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %52
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @kfree(i32* %136)
  br label %138

138:                                              ; preds = %135, %43
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @rtl_get_hwinfo(%struct.ieee80211_hw*, %struct.rtl_priv*, i32, i32*, i32*) #1

declare dso_local i32 @_rtl92de_efuse_update_chip_version(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92de_read_macphymode_and_bandtype(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32*) #1

declare dso_local i32 @_rtl92de_read_txpower_info(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
