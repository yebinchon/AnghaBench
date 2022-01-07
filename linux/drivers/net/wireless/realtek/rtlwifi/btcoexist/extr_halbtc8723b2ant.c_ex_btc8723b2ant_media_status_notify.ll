; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_media_status_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_media_status_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)*, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_MEDIA_CONNECT = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", align 1
@BTC_GET_U1_WIFI_CENTRAL_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@BTC_GET_U1_AP_NUM = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"[BTCoex], FW write 0x66=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b2ant_media_status_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  %13 = bitcast [3 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 24, i1 false)
  store i64 0, i64* %9, align 8
  %14 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %19 = load i32, i32* @COMP_BT_COEXIST, align 4
  %20 = load i32, i32* @DBG_LOUD, align 4
  %21 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %24 = load i32, i32* @COMP_BT_COEXIST, align 4
  %25 = load i32, i32* @DBG_LOUD, align 4
  %26 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 1
  %30 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %29, align 8
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %32 = load i32, i32* @BTC_GET_U1_WIFI_CENTRAL_CHNL, align 4
  %33 = call i32 %30(%struct.btc_coexist* %31, i32 %32, i64* %8)
  %34 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %27
  %38 = load i64, i64* %8, align 8
  %39 = icmp sle i64 %38, 14
  br i1 %39, label %40, label %70

40:                                               ; preds = %37
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  store i64 1, i64* %41, align 16
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %44, i32 0, i32 1
  %46 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %45, align 8
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %48 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %49 = call i32 %46(%struct.btc_coexist* %47, i32 %48, i64* %7)
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 48, i64* %54, align 16
  br label %69

55:                                               ; preds = %40
  %56 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %57 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %56, i32 0, i32 1
  %58 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %57, align 8
  %59 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %60 = load i32, i32* @BTC_GET_U1_AP_NUM, align 4
  %61 = call i32 %58(%struct.btc_coexist* %59, i32 %60, i64* %9)
  %62 = load i64, i64* %9, align 8
  %63 = icmp slt i64 %62, 10
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 48, i64* %65, align 16
  br label %68

66:                                               ; preds = %55
  %67 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 32, i64* %67, align 16
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %37, %27
  %71 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %72 = load i64, i64* %71, align 16
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 %72, i64* %76, align 8
  %77 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  store i64 %78, i64* %82, align 8
  %83 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %84 = load i64, i64* %83, align 16
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  store i64 %84, i64* %88, align 8
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %90 = load i32, i32* @COMP_BT_COEXIST, align 4
  %91 = load i32, i32* @DBG_LOUD, align 4
  %92 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %93 = load i64, i64* %92, align 16
  %94 = shl i64 %93, 16
  %95 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = shl i64 %96, 8
  %98 = or i64 %94, %97
  %99 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %100 = load i64, i64* %99, align 16
  %101 = or i64 %98, %100
  %102 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %104 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %103, i32 0, i32 0
  %105 = load i32 (%struct.btc_coexist*, i32, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i64*)** %104, align 8
  %106 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %107 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %108 = call i32 %105(%struct.btc_coexist* %106, i32 102, i32 3, i64* %107)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
