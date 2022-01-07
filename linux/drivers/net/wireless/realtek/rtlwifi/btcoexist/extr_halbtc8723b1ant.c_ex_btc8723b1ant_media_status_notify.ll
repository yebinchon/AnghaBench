; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_media_status_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_media_status_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64*, i64, i32, i32, i32, i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)*, i64, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BTC_MEDIA_CONNECT = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", align 1
@FORCE_EXEC = common dso_local global i32 0, align 4
@BTC_ANT_PATH_PTA = common dso_local global i32 0, align 4
@BTC_GET_BL_WIFI_UNDER_B_MODE = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", align 1
@BTC_GET_U1_WIFI_CENTRAL_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"[BTCoex], FW write 0x66 = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b1ant_media_status_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  %13 = bitcast [3 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 24, i1 false)
  store i32 0, i32* %9, align 4
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18, %2
  br label %194

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %105

33:                                               ; preds = %29
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %35 = load i32, i32* @COMP_BT_COEXIST, align 4
  %36 = load i32, i32* @DBG_LOUD, align 4
  %37 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %39 = load i32, i32* @FORCE_EXEC, align 4
  %40 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %38, i32 %39, i32 0, i32 8)
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %42 = load i32, i32* @BTC_ANT_PATH_PTA, align 4
  %43 = load i32, i32* @FORCE_EXEC, align 4
  %44 = call i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist* %41, i32 %42, i32 %43, i32 0, i32 0)
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %46 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %45, i32 0, i32 1
  %47 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %46, align 8
  %48 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %49 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_B_MODE, align 4
  %50 = bitcast i32* %9 to i64*
  %51 = call i32 %47(%struct.btc_coexist* %48, i32 %49, i64* %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %33
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %56 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %55, i32 0, i32 2
  %57 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %56, align 8
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %59 = call i32 %57(%struct.btc_coexist* %58, i32 1741, i32 0)
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %61 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %60, i32 0, i32 2
  %62 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %61, align 8
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %64 = call i32 %62(%struct.btc_coexist* %63, i32 1743, i32 0)
  br label %76

65:                                               ; preds = %33
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %67 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %66, i32 0, i32 2
  %68 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %67, align 8
  %69 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %70 = call i32 %68(%struct.btc_coexist* %69, i32 1741, i32 0)
  %71 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %72 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %71, i32 0, i32 2
  %73 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %72, align 8
  %74 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %75 = call i32 %73(%struct.btc_coexist* %74, i32 1743, i32 16)
  br label %76

76:                                               ; preds = %65, %54
  %77 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %78 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %77, i32 0, i32 5
  %79 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %78, align 8
  %80 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %81 = call i32 %79(%struct.btc_coexist* %80, i32 1072)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %84, i32 0, i32 5
  %86 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %85, align 8
  %87 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %88 = call i32 %86(%struct.btc_coexist* %87, i32 1076)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %92 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %91, i32 0, i32 4
  %93 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %92, align 8
  %94 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %95 = call i32 %93(%struct.btc_coexist* %94, i32 1066)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %99 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %98, i32 0, i32 3
  %100 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %99, align 8
  %101 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %102 = call i32 %100(%struct.btc_coexist* %101, i32 1110)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  br label %124

105:                                              ; preds = %29
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %107 = load i32, i32* @COMP_BT_COEXIST, align 4
  %108 = load i32, i32* @DBG_LOUD, align 4
  %109 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %113 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %112, i32 0, i32 2
  %114 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %113, align 8
  %115 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %116 = call i32 %114(%struct.btc_coexist* %115, i32 1741, i32 0)
  %117 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %118 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %117, i32 0, i32 2
  %119 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %118, align 8
  %120 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %121 = call i32 %119(%struct.btc_coexist* %120, i32 1743, i32 0)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  br label %124

124:                                              ; preds = %105, %76
  %125 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %126 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %125, i32 0, i32 1
  %127 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %126, align 8
  %128 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %129 = load i32, i32* @BTC_GET_U1_WIFI_CENTRAL_CHNL, align 4
  %130 = call i32 %127(%struct.btc_coexist* %128, i32 %129, i64* %8)
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %124
  %135 = load i64, i64* %8, align 8
  %136 = icmp sle i64 %135, 14
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  store i64 0, i64* %138, align 16
  %139 = load i64, i64* %8, align 8
  %140 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %139, i64* %140, align 8
  %141 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %142 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %141, i32 0, i32 1
  %143 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %142, align 8
  %144 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %145 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %146 = call i32 %143(%struct.btc_coexist* %144, i32 %145, i64* %7)
  %147 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %137
  %151 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 48, i64* %151, align 16
  br label %154

152:                                              ; preds = %137
  %153 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 32, i64* %153, align 16
  br label %154

154:                                              ; preds = %152, %150
  br label %155

155:                                              ; preds = %154, %134, %124
  %156 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %157 = load i64, i64* %156, align 16
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  store i64 %157, i64* %161, align 8
  %162 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  store i64 %163, i64* %167, align 8
  %168 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %169 = load i64, i64* %168, align 16
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 2
  store i64 %169, i64* %173, align 8
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %175 = load i32, i32* @COMP_BT_COEXIST, align 4
  %176 = load i32, i32* @DBG_LOUD, align 4
  %177 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %178 = load i64, i64* %177, align 16
  %179 = shl i64 %178, 16
  %180 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %181 = load i64, i64* %180, align 8
  %182 = shl i64 %181, 8
  %183 = or i64 %179, %182
  %184 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %185 = load i64, i64* %184, align 16
  %186 = or i64 %183, %185
  %187 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %174, i32 %175, i32 %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %186)
  %188 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %189 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %188, i32 0, i32 0
  %190 = load i32 (%struct.btc_coexist*, i32, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i64*)** %189, align 8
  %191 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %192 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %193 = call i32 %190(%struct.btc_coexist* %191, i32 102, i32 3, i64* %192)
  br label %194

194:                                              ; preds = %155, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #2

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #2

declare dso_local i32 @halbtc8723b1ant_set_ant_path(%struct.btc_coexist*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
