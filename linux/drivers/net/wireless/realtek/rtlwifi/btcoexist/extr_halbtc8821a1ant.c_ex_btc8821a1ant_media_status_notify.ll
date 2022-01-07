; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_media_status_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_media_status_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64*, i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)*, i64, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[BTCoex], RunCoexistMechanism(), return for 5G <===\0A\00", align 1
@BTC_MEDIA_CONNECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@BTC_GET_U1_WIFI_CENTRAL_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"[BTCoex], FW write 0x66 = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a1ant_media_status_notify(%struct.btc_coexist* %0, i64 %1) #0 {
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
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 4
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  %13 = bitcast [3 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 24, i1 false)
  store i32 0, i32* %9, align 4
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %15 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18, %2
  br label %132

29:                                               ; preds = %23
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 1
  %32 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %31, align 8
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %34 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %35 = bitcast i32* %9 to i64*
  %36 = call i32 %32(%struct.btc_coexist* %33, i32 %34, i64* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %41 = load i32, i32* @COMP_BT_COEXIST, align 4
  %42 = load i32, i32* @DBG_LOUD, align 4
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = call i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist* %44)
  br label %132

46:                                               ; preds = %29
  %47 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %52 = load i32, i32* @COMP_BT_COEXIST, align 4
  %53 = load i32, i32* @DBG_LOUD, align 4
  %54 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %62

55:                                               ; preds = %46
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %57 = load i32, i32* @COMP_BT_COEXIST, align 4
  %58 = load i32, i32* @DBG_LOUD, align 4
  %59 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %64 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %63, i32 0, i32 1
  %65 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %64, align 8
  %66 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %67 = load i32, i32* @BTC_GET_U1_WIFI_CENTRAL_CHNL, align 4
  %68 = call i32 %65(%struct.btc_coexist* %66, i32 %67, i64* %8)
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %62
  %73 = load i64, i64* %8, align 8
  %74 = icmp sle i64 %73, 14
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  store i64 0, i64* %76, align 16
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %77, i64* %78, align 8
  %79 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %80 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %79, i32 0, i32 1
  %81 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %80, align 8
  %82 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %83 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %84 = call i32 %81(%struct.btc_coexist* %82, i32 %83, i64* %7)
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 48, i64* %89, align 16
  br label %92

90:                                               ; preds = %75
  %91 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 32, i64* %91, align 16
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %72, %62
  %94 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %95 = load i64, i64* %94, align 16
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  store i64 %95, i64* %99, align 8
  %100 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  store i64 %101, i64* %105, align 8
  %106 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %107 = load i64, i64* %106, align 16
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 2
  store i64 %107, i64* %111, align 8
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %113 = load i32, i32* @COMP_BT_COEXIST, align 4
  %114 = load i32, i32* @DBG_LOUD, align 4
  %115 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %116 = load i64, i64* %115, align 16
  %117 = shl i64 %116, 16
  %118 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = shl i64 %119, 8
  %121 = or i64 %117, %120
  %122 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %123 = load i64, i64* %122, align 16
  %124 = or i64 %121, %123
  %125 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %124)
  %126 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %127 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %126, i32 0, i32 0
  %128 = load i32 (%struct.btc_coexist*, i32, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i64*)** %127, align 8
  %129 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %130 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %131 = call i32 %128(%struct.btc_coexist* %129, i32 102, i32 3, i64* %130)
  br label %132

132:                                              ; preds = %93, %39, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #2

declare dso_local i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
