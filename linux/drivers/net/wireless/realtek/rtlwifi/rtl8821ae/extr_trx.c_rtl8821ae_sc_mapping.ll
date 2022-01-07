; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_sc_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_sc_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_tcb_desc = type { i64 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }
%struct.rtl_mac = type { i64, i64 }

@HT_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@VHT_DATA_SC_DONOT_CARE = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@VHT_DATA_SC_40_LOWER_OF_80MHZ = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i64 0, align 8
@VHT_DATA_SC_40_UPPER_OF_80MHZ = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"rtl8821ae_sc_mapping: Not Correct Primary40MHz Setting\0A\00", align 1
@VHT_DATA_SC_20_LOWEST_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_LOWER_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_UPPER_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_UPPERST_OF_80MHZ = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.rtl_tcb_desc*)* @rtl8821ae_sc_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8821ae_sc_mapping(%struct.ieee80211_hw* %0, %struct.rtl_tcb_desc* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_tcb_desc*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.rtl_tcb_desc* %1, %struct.rtl_tcb_desc** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  store %struct.rtl_phy* %12, %struct.rtl_phy** %6, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %13)
  store %struct.rtl_mac* %14, %struct.rtl_mac** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %16 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HT_CHANNEL_WIDTH_80, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %124

20:                                               ; preds = %2
  %21 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HT_CHANNEL_WIDTH_80, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @VHT_DATA_SC_DONOT_CARE, align 4
  store i32 %27, i32* %8, align 4
  br label %123

28:                                               ; preds = %20
  %29 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %36 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @VHT_DATA_SC_40_LOWER_OF_80MHZ, align 4
  store i32 %41, i32* %8, align 4
  br label %56

42:                                               ; preds = %34
  %43 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %44 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @VHT_DATA_SC_40_UPPER_OF_80MHZ, align 4
  store i32 %49, i32* %8, align 4
  br label %55

50:                                               ; preds = %42
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %52 = load i32, i32* @COMP_SEND, align 4
  %53 = load i32, i32* @DBG_LOUD, align 4
  %54 = call i32 @RT_TRACE(%struct.rtl_priv* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %48
  br label %56

56:                                               ; preds = %55, %40
  br label %122

57:                                               ; preds = %28
  %58 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %59 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %65 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @VHT_DATA_SC_20_LOWEST_OF_80MHZ, align 4
  store i32 %70, i32* %8, align 4
  br label %121

71:                                               ; preds = %63, %57
  %72 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %73 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %79 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @VHT_DATA_SC_20_LOWER_OF_80MHZ, align 4
  store i32 %84, i32* %8, align 4
  br label %120

85:                                               ; preds = %77, %71
  %86 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %87 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %93 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @VHT_DATA_SC_20_UPPER_OF_80MHZ, align 4
  store i32 %98, i32* %8, align 4
  br label %119

99:                                               ; preds = %91, %85
  %100 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %101 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %107 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @VHT_DATA_SC_20_UPPERST_OF_80MHZ, align 4
  store i32 %112, i32* %8, align 4
  br label %118

113:                                              ; preds = %105, %99
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %115 = load i32, i32* @COMP_SEND, align 4
  %116 = load i32, i32* @DBG_LOUD, align 4
  %117 = call i32 @RT_TRACE(%struct.rtl_priv* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %111
  br label %119

119:                                              ; preds = %118, %97
  br label %120

120:                                              ; preds = %119, %83
  br label %121

121:                                              ; preds = %120, %69
  br label %122

122:                                              ; preds = %121, %56
  br label %123

123:                                              ; preds = %122, %26
  br label %169

124:                                              ; preds = %2
  %125 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %126 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %166

130:                                              ; preds = %124
  %131 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %4, align 8
  %132 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @VHT_DATA_SC_DONOT_CARE, align 4
  store i32 %137, i32* %8, align 4
  br label %165

138:                                              ; preds = %130
  %139 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %4, align 8
  %140 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %164

144:                                              ; preds = %138
  %145 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %146 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @VHT_DATA_SC_20_UPPER_OF_80MHZ, align 4
  store i32 %151, i32* %8, align 4
  br label %163

152:                                              ; preds = %144
  %153 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %154 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @VHT_DATA_SC_20_LOWER_OF_80MHZ, align 4
  store i32 %159, i32* %8, align 4
  br label %162

160:                                              ; preds = %152
  %161 = load i32, i32* @VHT_DATA_SC_DONOT_CARE, align 4
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %160, %158
  br label %163

163:                                              ; preds = %162, %150
  br label %164

164:                                              ; preds = %163, %138
  br label %165

165:                                              ; preds = %164, %136
  br label %168

166:                                              ; preds = %124
  %167 = load i32, i32* @VHT_DATA_SC_DONOT_CARE, align 4
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %166, %165
  br label %169

169:                                              ; preds = %168, %123
  %170 = load i32, i32* %8, align 4
  ret i32 %170
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
