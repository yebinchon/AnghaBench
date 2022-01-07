; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_bt_rssi_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_bt_rssi_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_2__* null, align 8
@BTC_RSSI_STATE_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_LOW = common dso_local global i64 0, align 8
@BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_HIGH = common dso_local global i32 0, align 4
@BTC_RSSI_STATE_STAY_HIGH = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[BTCoex], BT Rssi thresh error!!\0A\00", align 1
@BTC_RSSI_STATE_MEDIUM = common dso_local global i64 0, align 8
@BTC_RSSI_STATE_STAY_MEDIUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btc_coexist*, i32, i32, i32)* @btc8192e2ant_bt_rssi_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc8192e2ant_bt_rssi_state(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br i1 %23, label %24, label %61

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
  br i1 %37, label %38, label %50

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %45, i32* %12, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %44
  br label %60

50:                                               ; preds = %31
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %49
  br label %150

61:                                               ; preds = %4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %149

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %70 = load i32, i32* @COMP_BT_COEXIST, align 4
  %71 = load i32, i32* @DBG_LOUD, align 4
  %72 = call i32 @RT_TRACE(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  br label %155

76:                                               ; preds = %64
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %83, %76
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT, align 4
  %94 = add nsw i32 %92, %93
  %95 = icmp sge i32 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %12, align 4
  br label %102

99:                                               ; preds = %90
  %100 = load i64, i64* @BTC_RSSI_STATE_STAY_LOW, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %99, %96
  br label %148

103:                                              ; preds = %83
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %110, %103
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @BTC_RSSI_COEX_THRESH_TOL_8192E_2ANT, align 4
  %121 = add nsw i32 %119, %120
  %122 = icmp sge i32 %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @BTC_RSSI_STATE_HIGH, align 4
  store i32 %124, i32* %12, align 4
  br label %136

125:                                              ; preds = %117
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i64, i64* @BTC_RSSI_STATE_LOW, align 8
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %12, align 4
  br label %135

132:                                              ; preds = %125
  %133 = load i64, i64* @BTC_RSSI_STATE_STAY_MEDIUM, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %123
  br label %147

137:                                              ; preds = %110
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i64, i64* @BTC_RSSI_STATE_MEDIUM, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %12, align 4
  br label %146

144:                                              ; preds = %137
  %145 = load i32, i32* @BTC_RSSI_STATE_STAY_HIGH, align 4
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %144, %141
  br label %147

147:                                              ; preds = %146, %136
  br label %148

148:                                              ; preds = %147, %102
  br label %149

149:                                              ; preds = %148, %61
  br label %150

150:                                              ; preds = %149, %60
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_sta, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %150, %68
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
