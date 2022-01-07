; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_read_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_read_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32* }
%struct.rtl_phy = type { i32 }
%struct.rtl_efuse = type { i32, i32 }
%struct.rtl_hal = type { i32 }

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
define dso_local void @rtl8723be_read_eeprom_info(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %11)
  store %struct.rtl_efuse* %12, %struct.rtl_efuse** %4, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 1
  store %struct.rtl_phy* %14, %struct.rtl_phy** %5, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %6, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call i32 @_rtl8723be_read_chip_version(%struct.ieee80211_hw* %18)
  %20 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %21 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %23 = call i64 @get_rf_type(%struct.rtl_phy* %22)
  %24 = load i64, i64* @RF_1T1R, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 1, i32* %31, align 4
  br label %43

32:                                               ; preds = %1
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %26
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i32, i32* @COMP_INIT, align 4
  %46 = load i32, i32* @DBG_LOUD, align 4
  %47 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = load i32, i32* @REG_9346CR, align 4
  %53 = call i32 @rtl_read_byte(%struct.rtl_priv* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BIT(i32 4)
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %43
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = load i32, i32* @COMP_INIT, align 4
  %61 = load i32, i32* @DBG_DMESG, align 4
  %62 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EEPROM_93C46, align 4
  %64 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %74

66:                                               ; preds = %43
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = load i32, i32* @COMP_INIT, align 4
  %69 = load i32, i32* @DBG_DMESG, align 4
  %70 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EEPROM_BOOT_EFUSE, align 4
  %72 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %73 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %66, %58
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @BIT(i32 5)
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i32, i32* @COMP_INIT, align 4
  %82 = load i32, i32* @DBG_LOUD, align 4
  %83 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %85 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %87 = call i32 @_rtl8723be_read_adapter_info(%struct.ieee80211_hw* %86, i32 0)
  br label %90

88:                                               ; preds = %74
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %79
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %92 = call i32 @_rtl8723be_hal_customized_behavior(%struct.ieee80211_hw* %91)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl8723be_read_chip_version(%struct.ieee80211_hw*) #1

declare dso_local i64 @get_rf_type(%struct.rtl_phy*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @_rtl8723be_read_adapter_info(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @_rtl8723be_hal_customized_behavior(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
