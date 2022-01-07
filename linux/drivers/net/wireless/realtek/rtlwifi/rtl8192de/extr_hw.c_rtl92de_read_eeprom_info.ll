; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_read_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_read_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32, i32, i32 }
%struct.rtl_hal = type { i32 }

@REG_9346CR = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Boot from EEPROM\0A\00", align 1
@EEPROM_93C46 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Boot from EFUSE\0A\00", align 1
@EEPROM_BOOT_EFUSE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Autoload OK\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Autoload ERR!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92de_read_eeprom_info(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %10)
  store %struct.rtl_efuse* %11, %struct.rtl_efuse** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %13)
  store %struct.rtl_hal* %14, %struct.rtl_hal** %5, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @_rtl92de_read_chip_version(%struct.ieee80211_hw* %15)
  %17 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %18 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = load i32, i32* @REG_9346CR, align 4
  %21 = call i32 @rtl_read_byte(%struct.rtl_priv* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @BIT(i32 4)
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = load i32, i32* @COMP_INIT, align 4
  %32 = load i32, i32* @DBG_DMESG, align 4
  %33 = call i32 @RT_TRACE(%struct.rtl_priv* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EEPROM_93C46, align 4
  %35 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %1
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = load i32, i32* @COMP_INIT, align 4
  %40 = load i32, i32* @DBG_DMESG, align 4
  %41 = call i32 @RT_TRACE(%struct.rtl_priv* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EEPROM_BOOT_EFUSE, align 4
  %43 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %44 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %37, %29
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @BIT(i32 5)
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = load i32, i32* @COMP_INIT, align 4
  %53 = load i32, i32* @DBG_LOUD, align 4
  %54 = call i32 @RT_TRACE(%struct.rtl_priv* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %56 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = call i32 @_rtl92de_read_adapter_info(%struct.ieee80211_hw* %57)
  br label %61

59:                                               ; preds = %45
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %50
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl92de_read_chip_version(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @_rtl92de_read_adapter_info(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
