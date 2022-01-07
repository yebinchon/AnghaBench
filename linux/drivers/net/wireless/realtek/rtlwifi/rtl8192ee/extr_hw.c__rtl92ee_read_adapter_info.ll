; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_read_adapter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_read_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rtl_efuse = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.rtl_hal = type { i32, i64 }

@RTL8192E_EEPROM_ID = common dso_local global i32 0, align 4
@EEPROM_VID = common dso_local global i32 0, align 4
@EEPROM_DID = common dso_local global i32 0, align 4
@EEPROM_SVID = common dso_local global i32 0, align 4
@EEPROM_SMID = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR = common dso_local global i32 0, align 4
@EEPROM_CHANNELPLAN = common dso_local global i32 0, align 4
@EEPROM_VERSION = common dso_local global i32 0, align 4
@EEPROM_CUSTOMER_ID = common dso_local global i32 0, align 4
@COUNTRY_CODE_WORLD_WIDE_13 = common dso_local global i32 0, align 4
@HWSET_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EEPROM Customer ID: 0x%2x\0A\00", align 1
@EEPROM_RF_BOARD_OPTION_92E = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"board_type = 0x%x\0A\00", align 1
@EEPROM_XTAL_92E = common dso_local global i64 0, align 8
@NO_ANTDIV = common dso_local global i32 0, align 4
@RT_CID_DEFAULT = common dso_local global i64 0, align 8
@RT_CID_819X_LENOVO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92ee_read_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_read_adapter_info(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_efuse*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %11)
  store %struct.rtl_efuse* %12, %struct.rtl_efuse** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %5, align 8
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* @RTL8192E_EEPROM_ID, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @EEPROM_VID, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @EEPROM_DID, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @EEPROM_SVID, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @EEPROM_SMID, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @EEPROM_MAC_ADDR, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @EEPROM_CHANNELPLAN, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @EEPROM_VERSION, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @EEPROM_CUSTOMER_ID, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @COUNTRY_CODE_WORLD_WIDE_13, align 4
  store i32 %35, i32* %34, align 4
  %36 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kzalloc(i32 %36, i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %1
  br label %189

42:                                               ; preds = %1
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i32, i32* @HWSET_MAX_SIZE, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %48 = call i64 @rtl_get_hwinfo(%struct.ieee80211_hw* %43, %struct.rtl_priv* %44, i32 %45, i32* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %186

51:                                               ; preds = %42
  %52 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %53 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 255
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %58 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = load i32, i32* @COMP_INIT, align 4
  %62 = load i32, i32* @DBG_LOUD, align 4
  %63 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %64 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @RT_TRACE(%struct.rtl_priv* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %68 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %74 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @_rtl92ee_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %72, i32 %75, i32* %76)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %79 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %80 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @rtl92ee_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw* %78, i32 %81, i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = load i64, i64* @EEPROM_RF_BOARD_OPTION_92E, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 224
  %89 = ashr i32 %88, 5
  %90 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %91 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i64, i64* @EEPROM_RF_BOARD_OPTION_92E, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 255
  br i1 %96, label %97, label %100

97:                                               ; preds = %59
  %98 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %99 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %59
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = call i32 @BIT(i32 2)
  %109 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %110 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %115 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %118 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %120 = load i32, i32* @COMP_INIT, align 4
  %121 = load i32, i32* @DBG_LOUD, align 4
  %122 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %123 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @RT_TRACE(%struct.rtl_priv* %119, i32 %120, i32 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = load i64, i64* @EEPROM_XTAL_92E, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %131 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load i64, i64* @EEPROM_XTAL_92E, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 255
  br i1 %136, label %137, label %140

137:                                              ; preds = %113
  %138 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %139 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %138, i32 0, i32 2
  store i32 32, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %113
  %141 = load i32, i32* @NO_ANTDIV, align 4
  %142 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %143 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 8
  %144 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %145 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %144, i32 0, i32 6
  store i64 0, i64* %145, align 8
  %146 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %147 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @RT_CID_DEFAULT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %185

151:                                              ; preds = %140
  %152 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %153 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %180 [
    i32 128, label %155
  ]

155:                                              ; preds = %151
  %156 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %157 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 33163
  br i1 %159, label %160, label %175

160:                                              ; preds = %155
  %161 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %162 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 4332
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.rtl_efuse*, %struct.rtl_efuse** %4, align 8
  %167 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 27
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i64, i64* @RT_CID_819X_LENOVO, align 8
  %172 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %173 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %170, %165, %160
  br label %179

175:                                              ; preds = %155
  %176 = load i64, i64* @RT_CID_DEFAULT, align 8
  %177 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %178 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %175, %174
  br label %184

180:                                              ; preds = %151
  %181 = load i64, i64* @RT_CID_DEFAULT, align 8
  %182 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %183 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %180, %179
  br label %185

185:                                              ; preds = %184, %140
  br label %186

186:                                              ; preds = %185, %50
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @kfree(i32* %187)
  br label %189

189:                                              ; preds = %186, %41
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @rtl_get_hwinfo(%struct.ieee80211_hw*, %struct.rtl_priv*, i32, i32*, i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @_rtl92ee_read_txpower_info_from_hwpg(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @rtl92ee_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
