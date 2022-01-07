; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_wifi_rssi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_wifi_rssi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_GET_S4_WIFI_RSSI = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_HIGH = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[BTCoex], wifi RSSI thresh error!!\0A\00", align 1
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btc_coexist*, i64, i64, i64, i64)* @btc8192e2ant_wifi_rssi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btc8192e2ant_wifi_rssi_state(%struct.btc_coexist* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.btc_coexist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtl_priv*, align 8
  %13 = alloca i32, align 4
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
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %25 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %24, i32 0, i32 0
  %26 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %25, align 8
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %28 = load i32, i32* @BTC_GET_S4_WIFI_RSSI, align 4
  %29 = call i32 %26(%struct.btc_coexist* %27, i32 %28, i32* %13)
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 2
  br i1 %31, label %32, label %73

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
  br i1 %49, label %50, label %62

50:                                               ; preds = %41, %32
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT, align 8
  %55 = add i64 %53, %54
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %58, i64* %14, align 8
  br label %61

59:                                               ; preds = %50
  %60 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %59, %57
  br label %72

62:                                               ; preds = %41
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %10, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  store i64 %68, i64* %14, align 8
  br label %71

69:                                               ; preds = %62
  %70 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  store i64 %70, i64* %14, align 8
  br label %71

71:                                               ; preds = %69, %67
  br label %72

72:                                               ; preds = %71, %61
  br label %172

73:                                               ; preds = %5
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %74, 3
  br i1 %75, label %76, label %171

76:                                               ; preds = %73
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %12, align 8
  %82 = load i32, i32* @COMP_BT_COEXIST, align 4
  %83 = load i32, i32* @DBG_LOUD, align 4
  %84 = call i32 @RT_TRACE(%struct.rtl_priv* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %6, align 8
  br label %180

91:                                               ; preds = %76
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %91
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %100, %91
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT, align 8
  %114 = add i64 %112, %113
  %115 = icmp uge i64 %111, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  store i64 %117, i64* %14, align 8
  br label %120

118:                                              ; preds = %109
  %119 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  store i64 %119, i64* %14, align 8
  br label %120

120:                                              ; preds = %118, %116
  br label %170

121:                                              ; preds = %100
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %121
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %130, %121
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* @BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT, align 8
  %144 = add i64 %142, %143
  %145 = icmp uge i64 %141, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i64, i64* @BTC_RSSI_STATE_HIGH, align 8
  store i64 %147, i64* %14, align 8
  br label %158

148:                                              ; preds = %139
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %10, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  store i64 %154, i64* %14, align 8
  br label %157

155:                                              ; preds = %148
  %156 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  store i64 %156, i64* %14, align 8
  br label %157

157:                                              ; preds = %155, %153
  br label %158

158:                                              ; preds = %157, %146
  br label %169

159:                                              ; preds = %130
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %11, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  store i64 %165, i64* %14, align 8
  br label %168

166:                                              ; preds = %159
  %167 = load i64, i64* @BTC_RSSI_STATE_STAY_HIGH, align 8
  store i64 %167, i64* %14, align 8
  br label %168

168:                                              ; preds = %166, %164
  br label %169

169:                                              ; preds = %168, %158
  br label %170

170:                                              ; preds = %169, %120
  br label %171

171:                                              ; preds = %170, %73
  br label %172

172:                                              ; preds = %171, %72
  %173 = load i64, i64* %14, align 8
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* %8, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  store i64 %173, i64* %178, align 8
  %179 = load i64, i64* %14, align 8
  store i64 %179, i64* %6, align 8
  br label %180

180:                                              ; preds = %172, %80
  %181 = load i64, i64* %6, align 8
  ret i64 %181
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
