; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_bt_rssi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_btc8723b2ant_bt_rssi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_COEX_THRESH_TOL_8723B_2ANT = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[BTCoex], BT Rssi state switch to High\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[BTCoex], BT Rssi state stay at Low\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT Rssi state switch to Low\0A\00", align 1
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"[BTCoex], BT Rssi state stay at High\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"[BTCoex], BT Rssi thresh error!!\0A\00", align 1
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"[BTCoex], BT Rssi state switch to Medium\0A\00", align 1
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"[BTCoex], BT Rssi state stay at Medium\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*, i32, i32, i32)* @btc8723b2ant_bt_rssi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8723b2ant_bt_rssi_state(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btc_coexist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 0
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  store %struct.rtl_priv* %15, %struct.rtl_priv** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %77

24:                                               ; preds = %4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8723B_2ANT, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %47 = load i32, i32* @COMP_BT_COEXIST, align 4
  %48 = load i32, i32* @DBG_LOUD, align 4
  %49 = call i32 @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %57

50:                                               ; preds = %38
  %51 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %54 = load i32, i32* @COMP_BT_COEXIST, align 4
  %55 = load i32, i32* @DBG_LOUD, align 4
  %56 = call i32 @RT_TRACE(%struct.rtl_priv* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %50, %44
  br label %76

58:                                               ; preds = %31
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %12, align 4
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %66 = load i32, i32* @COMP_BT_COEXIST, align 4
  %67 = load i32, i32* @DBG_LOUD, align 4
  %68 = call i32 @RT_TRACE(%struct.rtl_priv* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %75

69:                                               ; preds = %58
  %70 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %72 = load i32, i32* @COMP_BT_COEXIST, align 4
  %73 = load i32, i32* @DBG_LOUD, align 4
  %74 = call i32 @RT_TRACE(%struct.rtl_priv* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %69, %62
  br label %76

76:                                               ; preds = %75, %57
  br label %194

77:                                               ; preds = %4
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %193

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %86 = load i32, i32* @COMP_BT_COEXIST, align 4
  %87 = load i32, i32* @DBG_LOUD, align 4
  %88 = call i32 @RT_TRACE(%struct.rtl_priv* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  br label %199

92:                                               ; preds = %80
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %99, %92
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8723B_2ANT, align 4
  %110 = add nsw i32 %108, %109
  %111 = icmp sge i32 %107, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %116 = load i32, i32* @COMP_BT_COEXIST, align 4
  %117 = load i32, i32* @DBG_LOUD, align 4
  %118 = call i32 @RT_TRACE(%struct.rtl_priv* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %126

119:                                              ; preds = %106
  %120 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %12, align 4
  %122 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %123 = load i32, i32* @COMP_BT_COEXIST, align 4
  %124 = load i32, i32* @DBG_LOUD, align 4
  %125 = call i32 @RT_TRACE(%struct.rtl_priv* %122, i32 %123, i32 %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %119, %112
  br label %192

127:                                              ; preds = %99
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %141, label %134

134:                                              ; preds = %127
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %173

141:                                              ; preds = %134, %127
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8723B_2ANT, align 4
  %145 = add nsw i32 %143, %144
  %146 = icmp sge i32 %142, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %148, i32* %12, align 4
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %150 = load i32, i32* @COMP_BT_COEXIST, align 4
  %151 = load i32, i32* @DBG_LOUD, align 4
  %152 = call i32 @RT_TRACE(%struct.rtl_priv* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %172

153:                                              ; preds = %141
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %12, align 4
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %161 = load i32, i32* @COMP_BT_COEXIST, align 4
  %162 = load i32, i32* @DBG_LOUD, align 4
  %163 = call i32 @RT_TRACE(%struct.rtl_priv* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %171

164:                                              ; preds = %153
  %165 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %12, align 4
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %168 = load i32, i32* @COMP_BT_COEXIST, align 4
  %169 = load i32, i32* @DBG_LOUD, align 4
  %170 = call i32 @RT_TRACE(%struct.rtl_priv* %167, i32 %168, i32 %169, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %171

171:                                              ; preds = %164, %157
  br label %172

172:                                              ; preds = %171, %147
  br label %191

173:                                              ; preds = %134
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %12, align 4
  %180 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %181 = load i32, i32* @COMP_BT_COEXIST, align 4
  %182 = load i32, i32* @DBG_LOUD, align 4
  %183 = call i32 @RT_TRACE(%struct.rtl_priv* %180, i32 %181, i32 %182, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %190

184:                                              ; preds = %173
  %185 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  store i32 %185, i32* %12, align 4
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %187 = load i32, i32* @COMP_BT_COEXIST, align 4
  %188 = load i32, i32* @DBG_LOUD, align 4
  %189 = call i32 @RT_TRACE(%struct.rtl_priv* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %190

190:                                              ; preds = %184, %177
  br label %191

191:                                              ; preds = %190, %172
  br label %192

192:                                              ; preds = %191, %126
  br label %193

193:                                              ; preds = %192, %77
  br label %194

194:                                              ; preds = %193, %76
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %194, %84
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
