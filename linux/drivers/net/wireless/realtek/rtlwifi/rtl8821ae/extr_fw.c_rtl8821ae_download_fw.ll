; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8821ae_download_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c_rtl8821ae_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.rtl_hal = type { i32, i64, i64, i64, i32, i8*, i64, i64 }
%struct.rtlwifi_firmware_header = type { i32, i32, i32 }

@HAL_DEF_WOWLAN = common dso_local global i32 0, align 4
@COMP_FW = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s Firmware SIZE %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Wowlan\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Firmware Version(%d), Signature(%#x)\0A\00", align 1
@REG_MCUFWDL = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Firmware is not ready to run!\0A\00", align 1
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Firmware is ready to run!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8821ae_download_fw(%struct.ieee80211_hw* %0, i32 %1) #0 {
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
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %7, align 8
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %27, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %30 = load i32, i32* @HAL_DEF_WOWLAN, align 4
  %31 = call i32 %28(%struct.ieee80211_hw* %29, i32 %30, i32* %12)
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %36 = call i32 @_rtl8821ae_wait_for_h2c_cmd_finish(%struct.rtl_priv* %35)
  br label %37

37:                                               ; preds = %34, %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  %41 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %42 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %174

46:                                               ; preds = %40
  %47 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %48 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.rtlwifi_firmware_header*
  store %struct.rtlwifi_firmware_header* %50, %struct.rtlwifi_firmware_header** %8, align 8
  %51 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %52 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le16_to_cpu(i32 %53)
  %55 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %56 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %58 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %61 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %63 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %9, align 8
  %66 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %67 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %10, align 8
  br label %98

69:                                               ; preds = %37
  %70 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %71 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %174

75:                                               ; preds = %69
  %76 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %77 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.rtlwifi_firmware_header*
  store %struct.rtlwifi_firmware_header* %79, %struct.rtlwifi_firmware_header** %8, align 8
  %80 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %81 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le16_to_cpu(i32 %82)
  %84 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %85 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %87 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %90 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %92 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %9, align 8
  %95 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %96 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %75, %46
  %99 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %100 = load i32, i32* @COMP_FW, align 4
  %101 = load i32, i32* @DBG_DMESG, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %106 = load i64, i64* %10, align 8
  %107 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %105, i64 %106)
  %108 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %109 = call i64 @IS_FW_HEADER_EXIST_8812(%struct.rtlwifi_firmware_header* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %98
  %112 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %113 = call i64 @IS_FW_HEADER_EXIST_8821(%struct.rtlwifi_firmware_header* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %111, %98
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %117 = load i32, i32* @COMP_FW, align 4
  %118 = load i32, i32* @DBG_DMESG, align 4
  %119 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %120 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rtlwifi_firmware_header*, %struct.rtlwifi_firmware_header** %8, align 8
  %123 = getelementptr inbounds %struct.rtlwifi_firmware_header, %struct.rtlwifi_firmware_header* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 12
  store i32* %127, i32** %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = sub i64 %128, 12
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %115, %111
  %131 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %132 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %137 = load i32, i32* @REG_MCUFWDL, align 4
  %138 = call i32 @rtl_read_byte(%struct.rtl_priv* %136, i32 %137)
  %139 = call i32 @BIT(i32 7)
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %144 = load i32, i32* @REG_MCUFWDL, align 4
  %145 = call i32 @rtl_write_byte(%struct.rtl_priv* %143, i32 %144, i32 0)
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %147 = call i32 @rtl8821ae_firmware_selfreset(%struct.ieee80211_hw* %146)
  br label %148

148:                                              ; preds = %142, %135
  br label %149

149:                                              ; preds = %148, %130
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %151 = call i32 @_rtl8821ae_enable_fw_download(%struct.ieee80211_hw* %150, i32 1)
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @_rtl8821ae_write_fw(%struct.ieee80211_hw* %152, i32 %153, i32* %154, i64 %155)
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %158 = call i32 @_rtl8821ae_enable_fw_download(%struct.ieee80211_hw* %157, i32 0)
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %160 = call i32 @_rtl8821ae_fw_free_to_go(%struct.ieee80211_hw* %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %149
  %164 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %165 = load i32, i32* @COMP_ERR, align 4
  %166 = load i32, i32* @DBG_DMESG, align 4
  %167 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %164, i32 %165, i32 %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %173

168:                                              ; preds = %149
  %169 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %170 = load i32, i32* @COMP_FW, align 4
  %171 = load i32, i32* @DBG_LOUD, align 4
  %172 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %169, i32 %170, i32 %171, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %163
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %74, %45
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl8821ae_wait_for_h2c_cmd_finish(%struct.rtl_priv*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @IS_FW_HEADER_EXIST_8812(%struct.rtlwifi_firmware_header*) #1

declare dso_local i64 @IS_FW_HEADER_EXIST_8821(%struct.rtlwifi_firmware_header*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl8821ae_firmware_selfreset(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8821ae_enable_fw_download(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl8821ae_write_fw(%struct.ieee80211_hw*, i32, i32*, i64) #1

declare dso_local i32 @_rtl8821ae_fw_free_to_go(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
