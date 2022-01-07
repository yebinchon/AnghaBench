; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_dynamic_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_dynamic_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32 }
%struct.rtl_phy = type { i64, i32 }
%struct.rtl_mac = type { i64, i64 }

@RF_2T2R = common dso_local global i64 0, align 8
@HAL_DM_HIPWR_DISABLE = common dso_local global i32 0, align 4
@TX_HIGHPWR_LEVEL_NORMAL = common dso_local global i8* null, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not connected to any\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"STA Default Port PWDB = 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"AP Ext Port PWDB = 0x%lx\0A\00", align 1
@TX_POWER_NEAR_FIELD_THRESH_LVL2 = common dso_local global i64 0, align 8
@TX_POWER_NEAR_FIELD_THRESH_LVL1 = common dso_local global i64 0, align 8
@MASKBYTE0 = common dso_local global i32 0, align 4
@TX_HIGHPWR_LEVEL_NORMAL2 = common dso_local global i64 0, align 8
@TX_HIGHPWR_LEVEL_NORMAL1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_dm_dynamic_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_dm_dynamic_txpower(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 1
  store %struct.rtl_phy* %12, %struct.rtl_phy** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %14)
  store %struct.rtl_mac* %15, %struct.rtl_mac** %5, align 8
  %16 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %17 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RF_2T2R, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %186

22:                                               ; preds = %1
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HAL_DM_HIPWR_DISABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28, %22
  %37 = load i8*, i8** @TX_HIGHPWR_LEVEL_NORMAL, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  br label %186

42:                                               ; preds = %28
  %43 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %44 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAC80211_LINKED, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = load i32, i32* @COMP_POWER, align 4
  %57 = load i32, i32* @DBG_TRACE, align 4
  %58 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** @TX_HIGHPWR_LEVEL_NORMAL, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 %60, i64* %63, align 8
  %64 = load i8*, i8** @TX_HIGHPWR_LEVEL_NORMAL, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i64 %65, i64* %68, align 8
  br label %186

69:                                               ; preds = %48, %42
  %70 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %71 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MAC80211_LINKED, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %69
  %76 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %77 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %6, align 8
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %87 = load i32, i32* @COMP_POWER, align 4
  %88 = load i32, i32* @DBG_LOUD, align 4
  %89 = load i64, i64* %6, align 8
  %90 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %86, i32 %87, i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  br label %101

91:                                               ; preds = %75
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %93 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %6, align 8
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @COMP_POWER, align 4
  %98 = load i32, i32* @DBG_LOUD, align 4
  %99 = load i64, i64* %6, align 8
  %100 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %91, %81
  br label %112

102:                                              ; preds = %69
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %104 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %6, align 8
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %108 = load i32, i32* @COMP_POWER, align 4
  %109 = load i32, i32* @DBG_LOUD, align 4
  %110 = load i64, i64* %6, align 8
  %111 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %110)
  br label %112

112:                                              ; preds = %102, %101
  %113 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL2, align 8
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL1, align 8
  store i64 %114, i64* %7, align 8
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %116 = load i32, i32* @MASKBYTE0, align 4
  %117 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %115, i32 3216, i32 %116)
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i8*, i8** @TX_HIGHPWR_LEVEL_NORMAL, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %123 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i64 %121, i64* %124, align 8
  br label %162

125:                                              ; preds = %112
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* %8, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i64, i64* @TX_HIGHPWR_LEVEL_NORMAL2, align 8
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %132 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  store i64 %130, i64* %133, align 8
  br label %161

134:                                              ; preds = %125
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* %8, align 8
  %137 = sub nsw i64 %136, 3
  %138 = icmp slt i64 %135, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* %7, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i64, i64* @TX_HIGHPWR_LEVEL_NORMAL1, align 8
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %146 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  store i64 %144, i64* %147, align 8
  br label %160

148:                                              ; preds = %139, %134
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* %7, align 8
  %151 = sub nsw i64 %150, 3
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i8*, i8** @TX_HIGHPWR_LEVEL_NORMAL, align 8
  %155 = ptrtoint i8* %154 to i64
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %157 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  store i64 %155, i64* %158, align 8
  br label %159

159:                                              ; preds = %153, %148
  br label %160

160:                                              ; preds = %159, %143
  br label %161

161:                                              ; preds = %160, %129
  br label %162

162:                                              ; preds = %161, %119
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %168 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %166, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %162
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %174 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %175 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @rtl92s_phy_set_txpower(%struct.ieee80211_hw* %173, i32 %176)
  br label %178

178:                                              ; preds = %172, %162
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %180 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %184 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 3
  store i64 %182, i64* %185, align 8
  br label %186

186:                                              ; preds = %178, %54, %36, %21
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl92s_phy_set_txpower(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
