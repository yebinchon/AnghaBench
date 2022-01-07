; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c_rtl8723e_read_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c_rtl8723e_read_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.rtl_phy }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.rtl_phy = type { i32 }
%struct.rtl_efuse = type { i32, i32 }
%struct.rtl_hal = type { i32 }

@EFUSE_TEST = common dso_local global i64 0, align 8
@EFUSE_SEL_MASK = common dso_local global i32 0, align 4
@EFUSE_WIFI_SEL_0 = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"VersionID = 0x%4x\0A\00", align 1
@REG_9346CR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Boot from EEPROM\0A\00", align 1
@EEPROM_93C46 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Boot from EFUSE\0A\00", align 1
@EEPROM_BOOT_EFUSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Autoload OK\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Autoload ERR!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_read_eeprom_info(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %12)
  store %struct.rtl_efuse* %13, %struct.rtl_efuse** %4, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 2
  store %struct.rtl_phy* %15, %struct.rtl_phy** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %6, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @EFUSE_TEST, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rtl_read_dword(%struct.rtl_priv* %19, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @EFUSE_SEL_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* @EFUSE_WIFI_SEL_0, align 4
  %34 = call i32 @EFUSE_SEL(i32 %33)
  %35 = or i32 %32, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @EFUSE_TEST, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @rtl_write_dword(%struct.rtl_priv* %36, i32 %44, i32 %45)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = call i32 @_rtl8723e_read_chip_version(%struct.ieee80211_hw* %47)
  %49 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %50 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %52 = call i64 @get_rf_type(%struct.rtl_phy* %51)
  %53 = load i64, i64* @RF_1T1R, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %1
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 1, i32* %60, align 4
  br label %72

61:                                               ; preds = %1
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %55
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = load i32, i32* @COMP_INIT, align 4
  %75 = load i32, i32* @DBG_LOUD, align 4
  %76 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %77 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i32, i32* @REG_9346CR, align 4
  %82 = call i32 @rtl_read_byte(%struct.rtl_priv* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @BIT(i32 4)
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %72
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = load i32, i32* @COMP_INIT, align 4
  %90 = load i32, i32* @DBG_DMESG, align 4
  %91 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EEPROM_93C46, align 4
  %93 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %94 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %103

95:                                               ; preds = %72
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @COMP_INIT, align 4
  %98 = load i32, i32* @DBG_DMESG, align 4
  %99 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @EEPROM_BOOT_EFUSE, align 4
  %101 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %102 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %95, %87
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @BIT(i32 5)
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %110 = load i32, i32* @COMP_INIT, align 4
  %111 = load i32, i32* @DBG_LOUD, align 4
  %112 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %114 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %113, i32 0, i32 0
  store i32 0, i32* %114, align 4
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %116 = call i32 @_rtl8723e_read_adapter_info(%struct.ieee80211_hw* %115, i32 0)
  br label %123

117:                                              ; preds = %103
  %118 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %119 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %118, i32 0, i32 0
  store i32 1, i32* %119, align 4
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %121 = call i32 @_rtl8723e_read_adapter_info(%struct.ieee80211_hw* %120, i32 0)
  %122 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %117, %108
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %125 = call i32 @_rtl8723e_hal_customized_behavior(%struct.ieee80211_hw* %124)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @EFUSE_SEL(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl8723e_read_chip_version(%struct.ieee80211_hw*) #1

declare dso_local i64 @get_rf_type(%struct.rtl_phy*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @_rtl8723e_read_adapter_info(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @_rtl8723e_hal_customized_behavior(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
