; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_fw_common.c_rtl8723_download_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_fw_common.c_rtl8723_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.rtlwifi_firmware_header*)* }
%struct.rtlwifi_firmware_header = type { i32, i32, i32 }
%struct.rtl_hal = type { i32, i64, i32*, i32, i32 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Firmware Version(%d), Signature(%#x), Size(%d)\0A\00", align 1
@REG_MCUFWDL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Firmware is not ready to run!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723_download_fw(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.rtl_hal*, align 8
  %10 = alloca %struct.rtlwifi_firmware_header*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %8, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %19)
  store %struct.rtl_hal* %20, %struct.rtl_hal** %9, align 8
  %21 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %22 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %30 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %3
  store i32 1, i32* %4, align 4
  br label %126

34:                                               ; preds = %28
  %35 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %36 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to %struct.rtlwifi_firmware_header*
  store %struct.rtlwifi_firmware_header* %38, %struct.rtlwifi_firmware_header** %10, align 8
  %39 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %10, align 8
  %40 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %44 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %10, align 8
  %46 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %49 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %51 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %11, align 8
  %53 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %54 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %34
  store i32 6, i32* %15, align 4
  br label %60

59:                                               ; preds = %34
  store i32 8, i32* %15, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64 (%struct.rtlwifi_firmware_header*)*, i64 (%struct.rtlwifi_firmware_header*)** %66, align 8
  %68 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %10, align 8
  %69 = call i64 %67(%struct.rtlwifi_firmware_header* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %60
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %73 = load i32, i32* @COMP_FW, align 4
  %74 = load i32, i32* @DBG_LOUD, align 4
  %75 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %10, align 8
  %76 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %10, align 8
  %79 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @RT_TRACE(%struct.rtl_priv* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80, i32 12)
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 12
  store i32* %83, i32** %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = sub i64 %84, 12
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %71, %60
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %88 = load i32, i32* @REG_MCUFWDL, align 4
  %89 = call i32 @rtl_read_byte(%struct.rtl_priv* %87, i32 %88)
  %90 = call i32 @BIT(i32 7)
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %98 = call i32 @rtl8723be_firmware_selfreset(%struct.ieee80211_hw* %97)
  br label %102

99:                                               ; preds = %93
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %101 = call i32 @rtl8723ae_firmware_selfreset(%struct.ieee80211_hw* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %104 = load i32, i32* @REG_MCUFWDL, align 4
  %105 = call i32 @rtl_write_byte(%struct.rtl_priv* %103, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %102, %86
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %108 = call i32 @rtl8723_enable_fw_download(%struct.ieee80211_hw* %107, i32 1)
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @rtl8723_write_fw(%struct.ieee80211_hw* %109, i32 %110, i32* %111, i64 %112, i32 %113)
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %116 = call i32 @rtl8723_enable_fw_download(%struct.ieee80211_hw* %115, i32 0)
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @rtl8723_fw_free_to_go(%struct.ieee80211_hw* %117, i32 %118, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %106
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %106
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %33
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8723be_firmware_selfreset(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723ae_firmware_selfreset(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl8723_enable_fw_download(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723_write_fw(%struct.ieee80211_hw*, i32, i32*, i64, i32) #1

declare dso_local i32 @rtl8723_fw_free_to_go(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
