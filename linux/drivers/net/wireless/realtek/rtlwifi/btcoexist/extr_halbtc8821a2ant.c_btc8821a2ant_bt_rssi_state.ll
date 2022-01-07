; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_bt_rssi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_bt_rssi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_COEX_THRESH_TOL_8821A_2ANT = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*, i32, i32, i32)* @btc8821a2ant_bt_rssi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8821a2ant_bt_rssi_state(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.btc_coexist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 0
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  store %struct.rtl_priv* %15, %struct.rtl_priv** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %79

24:                                               ; preds = %4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %31, %24
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8821A_2ANT, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = icmp sge i64 %39, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %48 = load i32, i32* @COMP_BT_COEXIST, align 4
  %49 = load i32, i32* @DBG_LOUD, align 4
  %50 = call i32 @RT_TRACE(%struct.rtl_priv* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %58

51:                                               ; preds = %38
  %52 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %55 = load i32, i32* @COMP_BT_COEXIST, align 4
  %56 = load i32, i32* @DBG_LOUD, align 4
  %57 = call i32 @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %51, %45
  br label %78

59:                                               ; preds = %31
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %68 = load i32, i32* @COMP_BT_COEXIST, align 4
  %69 = load i32, i32* @DBG_LOUD, align 4
  %70 = call i32 @RT_TRACE(%struct.rtl_priv* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %77

71:                                               ; preds = %59
  %72 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  store i32 %72, i32* %12, align 4
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %74 = load i32, i32* @COMP_BT_COEXIST, align 4
  %75 = load i32, i32* @DBG_LOUD, align 4
  %76 = call i32 @RT_TRACE(%struct.rtl_priv* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %64
  br label %78

78:                                               ; preds = %77, %58
  br label %200

79:                                               ; preds = %4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %199

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %88 = load i32, i32* @COMP_BT_COEXIST, align 4
  %89 = load i32, i32* @DBG_LOUD, align 4
  %90 = call i32 @RT_TRACE(%struct.rtl_priv* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %5, align 4
  br label %205

94:                                               ; preds = %82
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %101, %94
  %109 = load i64, i64* %11, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8821A_2ANT, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = icmp sge i64 %109, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %12, align 4
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %119 = load i32, i32* @COMP_BT_COEXIST, align 4
  %120 = load i32, i32* @DBG_LOUD, align 4
  %121 = call i32 @RT_TRACE(%struct.rtl_priv* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %129

122:                                              ; preds = %108
  %123 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %12, align 4
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %126 = load i32, i32* @COMP_BT_COEXIST, align 4
  %127 = load i32, i32* @DBG_LOUD, align 4
  %128 = call i32 @RT_TRACE(%struct.rtl_priv* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %122, %115
  br label %198

130:                                              ; preds = %101
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %144, label %137

137:                                              ; preds = %130
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %178

144:                                              ; preds = %137, %130
  %145 = load i64, i64* %11, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8821A_2ANT, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = icmp sge i64 %145, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %152, i32* %12, align 4
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %154 = load i32, i32* @COMP_BT_COEXIST, align 4
  %155 = load i32, i32* @DBG_LOUD, align 4
  %156 = call i32 @RT_TRACE(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %177

157:                                              ; preds = %144
  %158 = load i64, i64* %11, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp slt i64 %158, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %12, align 4
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %166 = load i32, i32* @COMP_BT_COEXIST, align 4
  %167 = load i32, i32* @DBG_LOUD, align 4
  %168 = call i32 @RT_TRACE(%struct.rtl_priv* %165, i32 %166, i32 %167, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %176

169:                                              ; preds = %157
  %170 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %12, align 4
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %173 = load i32, i32* @COMP_BT_COEXIST, align 4
  %174 = load i32, i32* @DBG_LOUD, align 4
  %175 = call i32 @RT_TRACE(%struct.rtl_priv* %172, i32 %173, i32 %174, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %169, %162
  br label %177

177:                                              ; preds = %176, %151
  br label %197

178:                                              ; preds = %137
  %179 = load i64, i64* %11, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %179, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %12, align 4
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %187 = load i32, i32* @COMP_BT_COEXIST, align 4
  %188 = load i32, i32* @DBG_LOUD, align 4
  %189 = call i32 @RT_TRACE(%struct.rtl_priv* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %196

190:                                              ; preds = %178
  %191 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  store i32 %191, i32* %12, align 4
  %192 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %193 = load i32, i32* @COMP_BT_COEXIST, align 4
  %194 = load i32, i32* @DBG_LOUD, align 4
  %195 = call i32 @RT_TRACE(%struct.rtl_priv* %192, i32 %193, i32 %194, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %196

196:                                              ; preds = %190, %183
  br label %197

197:                                              ; preds = %196, %177
  br label %198

198:                                              ; preds = %197, %129
  br label %199

199:                                              ; preds = %198, %79
  br label %200

200:                                              ; preds = %199, %78
  %201 = load i32, i32* %12, align 4
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %200, %86
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
