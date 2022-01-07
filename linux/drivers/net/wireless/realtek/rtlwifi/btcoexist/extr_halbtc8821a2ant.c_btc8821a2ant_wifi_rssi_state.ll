; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_wifi_rssi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_wifi_rssi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i64*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_COEX_THRESH_TOL_8821A_2ANT = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[BTCoex], wifi RSSI state switch to High\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"[BTCoex], wifi RSSI state stay at Low\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[BTCoex], wifi RSSI state switch to Low\0A\00", align 1
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"[BTCoex], wifi RSSI state stay at High\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"[BTCoex], wifi RSSI thresh error!!\0A\00", align 1
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"[BTCoex], wifi RSSI state switch to Medium\0A\00", align 1
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"[BTCoex], wifi RSSI state stay at Medium\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btc_coexist*, i64, i64, i64, i64)* @btc8821a2ant_wifi_rssi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btc8821a2ant_wifi_rssi_state(%struct.btc_coexist* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtl_priv*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %16, align 8
  store %struct.rtl_priv* %17, %struct.rtl_priv** %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %25 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %24, i32 0, i32 0
  %26 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %25, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %28 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %29 = call i32 %26(%struct.btc_coexist* %27, i32 %28, i64* %13)
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 2
  br i1 %31, label %32, label %87

32:                                               ; preds = %5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %41, %32
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @BTC_RSSI_COEX_THRESH_TOL_8821A_2ANT, align 8
  %54 = add i64 %52, %53
  %55 = icmp uge i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %57, i64* %14, align 8
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %59 = load i32, i32* @COMP_BT_COEXIST, align 4
  %60 = load i32, i32* @DBG_LOUD, align 4
  %61 = call i32 @RT_TRACE(%struct.rtl_priv* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %68

62:                                               ; preds = %50
  %63 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  store i64 %63, i64* %14, align 8
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %65 = load i32, i32* @COMP_BT_COEXIST, align 4
  %66 = load i32, i32* @DBG_LOUD, align 4
  %67 = call i32 @RT_TRACE(%struct.rtl_priv* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %56
  br label %86

69:                                               ; preds = %41
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  store i64 %74, i64* %14, align 8
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %76 = load i32, i32* @COMP_BT_COEXIST, align 4
  %77 = load i32, i32* @DBG_LOUD, align 4
  %78 = call i32 @RT_TRACE(%struct.rtl_priv* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %85

79:                                               ; preds = %69
  %80 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  store i64 %80, i64* %14, align 8
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %82 = load i32, i32* @COMP_BT_COEXIST, align 4
  %83 = load i32, i32* @DBG_LOUD, align 4
  %84 = call i32 @RT_TRACE(%struct.rtl_priv* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %79, %73
  br label %86

86:                                               ; preds = %85, %68
  br label %210

87:                                               ; preds = %5
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %88, 3
  br i1 %89, label %90, label %209

90:                                               ; preds = %87
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %96 = load i32, i32* @COMP_BT_COEXIST, align 4
  %97 = load i32, i32* @DBG_LOUD, align 4
  %98 = call i32 @RT_TRACE(%struct.rtl_priv* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %6, align 8
  br label %218

105:                                              ; preds = %90
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %105
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %114, %105
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* @BTC_RSSI_COEX_THRESH_TOL_8821A_2ANT, align 8
  %127 = add i64 %125, %126
  %128 = icmp uge i64 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  store i64 %130, i64* %14, align 8
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %132 = load i32, i32* @COMP_BT_COEXIST, align 4
  %133 = load i32, i32* @DBG_LOUD, align 4
  %134 = call i32 @RT_TRACE(%struct.rtl_priv* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %141

135:                                              ; preds = %123
  %136 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  store i64 %136, i64* %14, align 8
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %138 = load i32, i32* @COMP_BT_COEXIST, align 4
  %139 = load i32, i32* @DBG_LOUD, align 4
  %140 = call i32 @RT_TRACE(%struct.rtl_priv* %137, i32 %138, i32 %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %135, %129
  br label %208

142:                                              ; preds = %114
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %160, label %151

151:                                              ; preds = %142
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %190

160:                                              ; preds = %151, %142
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* @BTC_RSSI_COEX_THRESH_TOL_8821A_2ANT, align 8
  %164 = add i64 %162, %163
  %165 = icmp uge i64 %161, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %167, i64* %14, align 8
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %169 = load i32, i32* @COMP_BT_COEXIST, align 4
  %170 = load i32, i32* @DBG_LOUD, align 4
  %171 = call i32 @RT_TRACE(%struct.rtl_priv* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %189

172:                                              ; preds = %160
  %173 = load i64, i64* %13, align 8
  %174 = load i64, i64* %10, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  store i64 %177, i64* %14, align 8
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %179 = load i32, i32* @COMP_BT_COEXIST, align 4
  %180 = load i32, i32* @DBG_LOUD, align 4
  %181 = call i32 @RT_TRACE(%struct.rtl_priv* %178, i32 %179, i32 %180, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %188

182:                                              ; preds = %172
  %183 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  store i64 %183, i64* %14, align 8
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %185 = load i32, i32* @COMP_BT_COEXIST, align 4
  %186 = load i32, i32* @DBG_LOUD, align 4
  %187 = call i32 @RT_TRACE(%struct.rtl_priv* %184, i32 %185, i32 %186, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %188

188:                                              ; preds = %182, %176
  br label %189

189:                                              ; preds = %188, %166
  br label %207

190:                                              ; preds = %151
  %191 = load i64, i64* %13, align 8
  %192 = load i64, i64* %11, align 8
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  store i64 %195, i64* %14, align 8
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %197 = load i32, i32* @COMP_BT_COEXIST, align 4
  %198 = load i32, i32* @DBG_LOUD, align 4
  %199 = call i32 @RT_TRACE(%struct.rtl_priv* %196, i32 %197, i32 %198, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %206

200:                                              ; preds = %190
  %201 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  store i64 %201, i64* %14, align 8
  %202 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %203 = load i32, i32* @COMP_BT_COEXIST, align 4
  %204 = load i32, i32* @DBG_LOUD, align 4
  %205 = call i32 @RT_TRACE(%struct.rtl_priv* %202, i32 %203, i32 %204, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %206

206:                                              ; preds = %200, %194
  br label %207

207:                                              ; preds = %206, %189
  br label %208

208:                                              ; preds = %207, %141
  br label %209

209:                                              ; preds = %208, %87
  br label %210

210:                                              ; preds = %209, %86
  %211 = load i64, i64* %14, align 8
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load i64, i64* %8, align 8
  %216 = getelementptr inbounds i64, i64* %214, i64 %215
  store i64 %211, i64* %216, align 8
  %217 = load i64, i64* %14, align 8
  store i64 %217, i64* %6, align 8
  br label %218

218:                                              ; preds = %210, %94
  %219 = load i64, i64* %6, align 8
  ret i64 %219
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
