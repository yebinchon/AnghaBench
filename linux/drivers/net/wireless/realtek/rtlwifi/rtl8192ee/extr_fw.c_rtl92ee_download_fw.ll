; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_fw.c_rtl92ee_download_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_fw.c_rtl92ee_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32, i64, i64, i64, i32, i32 }
%struct.rtlwifi_firmware_header = type { i64, i32, i32 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"normal Firmware SIZE %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Firmware Version(%d), Signature(%#x),Size(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Firmware no Header, Signature(%#x)\0A\00", align 1
@REG_MCUFWDL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92ee_download_fw(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca %struct.rtlwifi_firmware_header*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %7, align 8
  %18 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %19 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %22 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %112

26:                                               ; preds = %2
  %27 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %28 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.rtlwifi_firmware_header*
  store %struct.rtlwifi_firmware_header* %30, %struct.rtlwifi_firmware_header** %8, align 8
  %31 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %32 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %36 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %38 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %43 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %9, align 8
  %46 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %47 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %50 = load i32, i32* @COMP_FW, align 4
  %51 = load i32, i32* @DBG_DMESG, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %55 = call i64 @IS_FW_HEADER_EXIST(%struct.rtlwifi_firmware_header* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %26
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %59 = load i32, i32* @COMP_FW, align 4
  %60 = load i32, i32* @DBG_DMESG, align 4
  %61 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %62 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %66 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %67, i32 16)
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 16
  store i32* %70, i32** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %71, 16
  store i64 %72, i64* %10, align 8
  br label %81

73:                                               ; preds = %26
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %75 = load i32, i32* @COMP_FW, align 4
  %76 = load i32, i32* @DBG_DMESG, align 4
  %77 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %78 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i64, ...) @RT_TRACE(%struct.rtl_priv* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %73, %57
  %82 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %83 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %88 = load i32, i32* @REG_MCUFWDL, align 4
  %89 = call i32 @rtl_read_byte(%struct.rtl_priv* %87, i32 %88)
  %90 = call i32 @BIT(i32 7)
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %95 = load i32, i32* @REG_MCUFWDL, align 4
  %96 = call i32 @rtl_write_byte(%struct.rtl_priv* %94, i32 %95, i32 0)
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %98 = call i32 @rtl92ee_firmware_selfreset(%struct.ieee80211_hw* %97)
  br label %99

99:                                               ; preds = %93, %86
  br label %100

100:                                              ; preds = %99, %81
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %102 = call i32 @_rtl92ee_enable_fw_download(%struct.ieee80211_hw* %101, i32 1)
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @_rtl92ee_write_fw(%struct.ieee80211_hw* %103, i32 %104, i32* %105, i64 %106)
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %109 = call i32 @_rtl92ee_enable_fw_download(%struct.ieee80211_hw* %108, i32 0)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %111 = call i32 @_rtl92ee_fw_free_to_go(%struct.ieee80211_hw* %110)
  store i32 %111, i32* %11, align 4
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %100, %25
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, ...) #1

declare dso_local i64 @IS_FW_HEADER_EXIST(%struct.rtlwifi_firmware_header*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92ee_firmware_selfreset(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ee_enable_fw_download(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92ee_write_fw(%struct.ieee80211_hw*, i32, i32*, i64) #1

declare dso_local i32 @_rtl92ee_fw_free_to_go(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
