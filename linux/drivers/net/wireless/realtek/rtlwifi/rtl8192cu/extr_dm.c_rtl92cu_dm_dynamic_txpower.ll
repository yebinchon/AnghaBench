; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_dm.c_rtl92cu_dm_dynamic_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_dm.c_rtl92cu_dm_dynamic_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32 }
%struct.rtl_phy = type { i64 }
%struct.rtl_mac = type { i64, i64 }

@HAL_DM_HIPWR_DISABLE = common dso_local global i32 0, align 4
@TXHIGHPWRLEVEL_NORMAL = common dso_local global i64 0, align 8
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
@TXHIGHPWRLEVEL_LEVEL1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x0)\0A\00", align 1
@TX_POWER_NEAR_FIELD_THRESH_LVL1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x10)\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"TXHIGHPWRLEVEL_NORMAL\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"PHY_SetTxPowerLevel8192S() Channel = %d\0A\00", align 1
@TXHIGHPWRLEVEL_LEVEL2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_dm_dynamic_txpower(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 1
  store %struct.rtl_phy* %10, %struct.rtl_phy** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %211

20:                                               ; preds = %1
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HAL_DM_HIPWR_DISABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i64, i64* @TXHIGHPWRLEVEL_NORMAL, align 8
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 %29, i64* %32, align 8
  br label %211

33:                                               ; preds = %20
  %34 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MAC80211_LINKED, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = load i32, i32* @COMP_POWER, align 4
  %48 = load i32, i32* @DBG_TRACE, align 4
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* @TXHIGHPWRLEVEL_NORMAL, align 8
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* @TXHIGHPWRLEVEL_NORMAL, align 8
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i64 %54, i64* %57, align 8
  br label %211

58:                                               ; preds = %39, %33
  %59 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %60 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MAC80211_LINKED, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %58
  %65 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %66 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %6, align 8
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %76 = load i32, i32* @COMP_POWER, align 4
  %77 = load i32, i32* @DBG_LOUD, align 4
  %78 = load i64, i64* %6, align 8
  %79 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  br label %90

80:                                               ; preds = %64
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %82 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %6, align 8
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %86 = load i32, i32* @COMP_POWER, align 4
  %87 = load i32, i32* @DBG_LOUD, align 4
  %88 = load i64, i64* %6, align 8
  %89 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %80, %70
  br label %101

91:                                               ; preds = %58
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %93 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %6, align 8
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @COMP_POWER, align 4
  %98 = load i32, i32* @DBG_LOUD, align 4
  %99 = load i64, i64* %6, align 8
  %100 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %91, %90
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL2, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i64, i64* @TXHIGHPWRLEVEL_LEVEL1, align 8
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %108 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %111 = load i32, i32* @COMP_POWER, align 4
  %112 = load i32, i32* @DBG_LOUD, align 4
  %113 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %148

114:                                              ; preds = %101
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL2, align 8
  %117 = sub nsw i64 %116, 3
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL1, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load i64, i64* @TXHIGHPWRLEVEL_LEVEL1, align 8
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %126 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i64 %124, i64* %127, align 8
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %129 = load i32, i32* @COMP_POWER, align 4
  %130 = load i32, i32* @DBG_LOUD, align 4
  %131 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %147

132:                                              ; preds = %119, %114
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL1, align 8
  %135 = sub nsw i64 %134, 5
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i64, i64* @TXHIGHPWRLEVEL_NORMAL, align 8
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %140 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  store i64 %138, i64* %141, align 8
  %142 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %143 = load i32, i32* @COMP_POWER, align 4
  %144 = load i32, i32* @DBG_LOUD, align 4
  %145 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %142, i32 %143, i32 %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %146

146:                                              ; preds = %137, %132
  br label %147

147:                                              ; preds = %146, %123
  br label %148

148:                                              ; preds = %147, %105
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %150 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %154 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %152, %156
  br i1 %157, label %158, label %203

158:                                              ; preds = %148
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %160 = load i32, i32* @COMP_POWER, align 4
  %161 = load i32, i32* @DBG_LOUD, align 4
  %162 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %163 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %159, i32 %160, i32 %161, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %164)
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %167 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %168 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw* %166, i64 %169)
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %172 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TXHIGHPWRLEVEL_NORMAL, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %158
  %178 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %179 = call i32 @dm_restorepowerindex(%struct.ieee80211_hw* %178)
  br label %202

180:                                              ; preds = %158
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %182 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @TXHIGHPWRLEVEL_LEVEL1, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %189 = call i32 @dm_writepowerindex(%struct.ieee80211_hw* %188, i32 20)
  br label %201

190:                                              ; preds = %180
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %192 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @TXHIGHPWRLEVEL_LEVEL2, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %199 = call i32 @dm_writepowerindex(%struct.ieee80211_hw* %198, i32 16)
  br label %200

200:                                              ; preds = %197, %190
  br label %201

201:                                              ; preds = %200, %187
  br label %202

202:                                              ; preds = %201, %177
  br label %203

203:                                              ; preds = %202, %148
  %204 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %205 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %209 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 3
  store i64 %207, i64* %210, align 8
  br label %211

211:                                              ; preds = %203, %45, %28, %19
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl92c_phy_set_txpower_level(%struct.ieee80211_hw*, i64) #1

declare dso_local i32 @dm_restorepowerindex(%struct.ieee80211_hw*) #1

declare dso_local i32 @dm_writepowerindex(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
