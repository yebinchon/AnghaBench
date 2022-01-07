; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_read_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_read_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32, i32 }

@EPROM_CMD = common dso_local global i32 0, align 4
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
define dso_local void @rtl92se_read_eeprom_info(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %9)
  store %struct.rtl_efuse* %10, %struct.rtl_efuse** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = load i32, i32* @EPROM_CMD, align 4
  %13 = call i32 @rtl_read_byte(%struct.rtl_priv* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @BIT(i32 4)
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = load i32, i32* @COMP_INIT, align 4
  %21 = load i32, i32* @DBG_DMESG, align 4
  %22 = call i32 @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EEPROM_93C46, align 4
  %24 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %34

26:                                               ; preds = %1
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i32, i32* @COMP_INIT, align 4
  %29 = load i32, i32* @DBG_DMESG, align 4
  %30 = call i32 @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EEPROM_BOOT_EFUSE, align 4
  %32 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %18
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @BIT(i32 5)
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = load i32, i32* @COMP_INIT, align 4
  %42 = load i32, i32* @DBG_LOUD, align 4
  %43 = call i32 @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %47 = call i32 @_rtl92se_read_adapter_info(%struct.ieee80211_hw* %46)
  br label %52

48:                                               ; preds = %34
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %51 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %39
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @_rtl92se_read_adapter_info(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
