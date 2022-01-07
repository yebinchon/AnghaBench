; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_dynamic_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_dynamic_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32 }
%struct.rtl_phy = type { i64 }
%struct.rtl_hal = type { i64 }
%struct.rtl_mac = type { i64, i64 }

@HAL_DM_HIPWR_DISABLE = common dso_local global i32 0, align 4
@TXHIGHPWRLEVEL_NORMAL = common dso_local global i8* null, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not connected to any\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"IBSS Client PWDB = 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"STA Default Port PWDB = 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"AP Ext Port PWDB = 0x%lx\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@TXHIGHPWRLEVEL_LEVEL2 = common dso_local global i8* null, align 8
@COMP_HIPWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"5G:TxHighPwrLevel_Level2 (TxPwr=0x0)\0A\00", align 1
@TXHIGHPWRLEVEL_LEVEL1 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"5G:TxHighPwrLevel_Level1 (TxPwr=0x10)\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"5G:TxHighPwrLevel_Normal\0A\00", align 1
@TX_POWER_NEAR_FIELD_THRESH_LVL2 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x0)\0A\00", align 1
@TX_POWER_NEAR_FIELD_THRESH_LVL1 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"TXHIGHPWRLEVEL_LEVEL1 (TxPwr=0x10)\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"TXHIGHPWRLEVEL_NORMAL\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"PHY_SetTxPowerLevel8192S() Channel = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92d_dm_dynamic_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92d_dm_dynamic_txpower(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 1
  store %struct.rtl_phy* %11, %struct.rtl_phy** %4, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %15)
  store %struct.rtl_mac* %16, %struct.rtl_mac** %6, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HAL_DM_HIPWR_DISABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22, %1
  %31 = load i8*, i8** @TXHIGHPWRLEVEL_NORMAL, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  br label %239

36:                                               ; preds = %22
  %37 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %38 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MAC80211_LINKED, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i32, i32* @COMP_POWER, align 4
  %51 = load i32, i32* @DBG_TRACE, align 4
  %52 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** @TXHIGHPWRLEVEL_NORMAL, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  %58 = load i8*, i8** @TXHIGHPWRLEVEL_NORMAL, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i64 %59, i64* %62, align 8
  br label %239

63:                                               ; preds = %42, %36
  %64 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %65 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MAC80211_LINKED, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %63
  %70 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %71 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %77 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %7, align 8
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i32, i32* @COMP_POWER, align 4
  %82 = load i32, i32* @DBG_LOUD, align 4
  %83 = load i64, i64* %7, align 8
  %84 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  br label %95

85:                                               ; preds = %69
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %87 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %7, align 8
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %91 = load i32, i32* @COMP_POWER, align 4
  %92 = load i32, i32* @DBG_LOUD, align 4
  %93 = load i64, i64* %7, align 8
  %94 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %85, %75
  br label %106

96:                                               ; preds = %63
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %7, align 8
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %102 = load i32, i32* @COMP_POWER, align 4
  %103 = load i32, i32* @DBG_LOUD, align 4
  %104 = load i64, i64* %7, align 8
  %105 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %96, %95
  %107 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %108 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BAND_ON_5G, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %157

112:                                              ; preds = %106
  %113 = load i64, i64* %7, align 8
  %114 = icmp sge i64 %113, 51
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i8*, i8** @TXHIGHPWRLEVEL_LEVEL2, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %119 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i64 %117, i64* %120, align 8
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %122 = load i32, i32* @COMP_HIPWR, align 4
  %123 = load i32, i32* @DBG_LOUD, align 4
  %124 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %121, i32 %122, i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %156

125:                                              ; preds = %112
  %126 = load i64, i64* %7, align 8
  %127 = icmp slt i64 %126, 51
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i64, i64* %7, align 8
  %130 = icmp sge i64 %129, 43
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i8*, i8** @TXHIGHPWRLEVEL_LEVEL1, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %135 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i64 %133, i64* %136, align 8
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %138 = load i32, i32* @COMP_HIPWR, align 4
  %139 = load i32, i32* @DBG_LOUD, align 4
  %140 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %137, i32 %138, i32 %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %155

141:                                              ; preds = %128, %125
  %142 = load i64, i64* %7, align 8
  %143 = icmp slt i64 %142, 43
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load i8*, i8** @TXHIGHPWRLEVEL_NORMAL, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %148 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i64 %146, i64* %149, align 8
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %151 = load i32, i32* @COMP_HIPWR, align 4
  %152 = load i32, i32* @DBG_LOUD, align 4
  %153 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %154

154:                                              ; preds = %144, %141
  br label %155

155:                                              ; preds = %154, %131
  br label %156

156:                                              ; preds = %155, %115
  br label %208

157:                                              ; preds = %106
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL2, align 8
  %160 = icmp sge i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %157
  %162 = load i8*, i8** @TXHIGHPWRLEVEL_LEVEL2, align 8
  %163 = ptrtoint i8* %162 to i64
  %164 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %165 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  store i64 %163, i64* %166, align 8
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %168 = load i32, i32* @COMP_POWER, align 4
  %169 = load i32, i32* @DBG_LOUD, align 4
  %170 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %167, i32 %168, i32 %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %207

171:                                              ; preds = %157
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL2, align 8
  %174 = sub nsw i64 %173, 3
  %175 = icmp slt i64 %172, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %171
  %177 = load i64, i64* %7, align 8
  %178 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL1, align 8
  %179 = icmp sge i64 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = load i8*, i8** @TXHIGHPWRLEVEL_LEVEL1, align 8
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %184 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  store i64 %182, i64* %185, align 8
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %187 = load i32, i32* @COMP_POWER, align 4
  %188 = load i32, i32* @DBG_LOUD, align 4
  %189 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %206

190:                                              ; preds = %176, %171
  %191 = load i64, i64* %7, align 8
  %192 = load i64, i64* @TX_POWER_NEAR_FIELD_THRESH_LVL1, align 8
  %193 = sub nsw i64 %192, 5
  %194 = icmp slt i64 %191, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load i8*, i8** @TXHIGHPWRLEVEL_NORMAL, align 8
  %197 = ptrtoint i8* %196 to i64
  %198 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %199 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  store i64 %197, i64* %200, align 8
  %201 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %202 = load i32, i32* @COMP_POWER, align 4
  %203 = load i32, i32* @DBG_LOUD, align 4
  %204 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %201, i32 %202, i32 %203, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %205

205:                                              ; preds = %195, %190
  br label %206

206:                                              ; preds = %205, %180
  br label %207

207:                                              ; preds = %206, %161
  br label %208

208:                                              ; preds = %207, %156
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %210 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %214 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %212, %216
  br i1 %217, label %218, label %231

218:                                              ; preds = %208
  %219 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %220 = load i32, i32* @COMP_POWER, align 4
  %221 = load i32, i32* @DBG_LOUD, align 4
  %222 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %223 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %219, i32 %220, i32 %221, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %224)
  %226 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %227 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %228 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @rtl92d_phy_set_txpower_level(%struct.ieee80211_hw* %226, i64 %229)
  br label %231

231:                                              ; preds = %218, %208
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %233 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %237 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 3
  store i64 %235, i64* %238, align 8
  br label %239

239:                                              ; preds = %231, %48, %30
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl92d_phy_set_txpower_level(%struct.ieee80211_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
