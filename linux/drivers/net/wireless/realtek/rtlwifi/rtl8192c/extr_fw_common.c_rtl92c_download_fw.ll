; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_rtl92c_download_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_rtl92c_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32, i32, i32, i64, i64 }
%struct.rtlwifi_firmware_header = type { i32, i32, i32 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Firmware Version(%d), Signature(%#x),Size(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Firmware is not ready to run!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92c_download_fw(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca %struct.rtlwifi_firmware_header*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %5, align 8
  %16 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %17 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %82

24:                                               ; preds = %1
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.rtlwifi_firmware_header*
  store %struct.rtlwifi_firmware_header* %28, %struct.rtlwifi_firmware_header** %6, align 8
  %29 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %30 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %7, align 8
  %33 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %34 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %6, align 8
  %37 = call i64 @IS_FW_HEADER_EXIST(%struct.rtlwifi_firmware_header* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %24
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %41 = load i32, i32* @COMP_FW, align 4
  %42 = load i32, i32* @DBG_DMESG, align 4
  %43 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %6, align 8
  %44 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %6, align 8
  %47 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 12)
  %50 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %6, align 8
  %51 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %6, align 8
  %57 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 12
  store i32* %62, i32** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub i64 %63, 12
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %39, %24
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %67 = call i32 @_rtl92c_enable_fw_download(%struct.ieee80211_hw* %66, i32 1)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @_rtl92c_write_fw(%struct.ieee80211_hw* %68, i32 %69, i32* %70, i64 %71)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %74 = call i32 @_rtl92c_enable_fw_download(%struct.ieee80211_hw* %73, i32 0)
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = call i32 @_rtl92c_fw_free_to_go(%struct.ieee80211_hw* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %65
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %23
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @IS_FW_HEADER_EXIST(%struct.rtlwifi_firmware_header*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @_rtl92c_enable_fw_download(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92c_write_fw(%struct.ieee80211_hw*, i32, i32*, i64) #1

declare dso_local i32 @_rtl92c_fw_free_to_go(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
