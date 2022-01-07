; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_read_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_read_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32, i32 }
%struct.rtl_hal = type { i32 }

@REG_9346CR = common dso_local global i32 0, align 4
@BOOT_FROM_EEPROM = common dso_local global i32 0, align 4
@EEPROM_93C46 = common dso_local global i32 0, align 4
@EEPROM_BOOT_EFUSE = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Boot from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EERROM\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"EFUSE\00", align 1
@EEPROM_EN = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Autoload %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OK!!\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ERR!!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_read_eeprom_info(%struct.ieee80211_hw* %0) #0 {
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
  %15 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %16 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IS_NORMAL_CHIP(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %69

21:                                               ; preds = %1
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = load i32, i32* @REG_9346CR, align 4
  %24 = call i32 @rtl_read_byte(%struct.rtl_priv* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @BOOT_FROM_EEPROM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @EEPROM_93C46, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @EEPROM_BOOT_EFUSE, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = load i32, i32* @COMP_INIT, align 4
  %39 = load i32, i32* @DBG_DMESG, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BOOT_FROM_EEPROM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @EEPROM_EN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 1
  %53 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %54 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = load i32, i32* @COMP_INIT, align 4
  %57 = load i32, i32* @DBG_LOUD, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @EEPROM_EN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %64 = call i32 @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = call i32 @_rtl92cu_read_adapter_info(%struct.ieee80211_hw* %65)
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %68 = call i32 @_rtl92cu_hal_customized_behavior(%struct.ieee80211_hw* %67)
  br label %69

69:                                               ; preds = %33, %20
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @IS_NORMAL_CHIP(i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*) #1

declare dso_local i32 @_rtl92cu_read_adapter_info(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92cu_hal_customized_behavior(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
