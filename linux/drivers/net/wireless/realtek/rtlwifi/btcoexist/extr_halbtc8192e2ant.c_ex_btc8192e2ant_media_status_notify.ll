; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_ex_btc8192e2ant_media_status_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_ex_btc8192e2ant_media_status_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)*, %struct.TYPE_3__, i64, i64, %struct.rtl_priv* }
%struct.TYPE_3__ = type { i64 }
%struct.rtl_priv = type { i32 }

@BTC_MEDIA_CONNECT = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[BTCoex], MEDIA connect notify\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"[BTCoex], MEDIA disconnect notify\0A\00", align 1
@BTC_GET_U1_WIFI_CENTRAL_CHNL = common dso_local global i32 0, align 4
@BTC_GET_U4_WIFI_BW = common dso_local global i32 0, align 4
@BTC_WIFI_BW_HT40 = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"[BTCoex], FW write 0x66 = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8192e2ant_media_status_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %10 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %9, i32 0, i32 5
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = bitcast [3 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %17, %2
  br label %113

29:                                               ; preds = %22
  %30 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %35 = load i32, i32* @COMP_BT_COEXIST, align 4
  %36 = load i32, i32* @DBG_LOUD, align 4
  %37 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %43

38:                                               ; preds = %29
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %40 = load i32, i32* @COMP_BT_COEXIST, align 4
  %41 = load i32, i32* @DBG_LOUD, align 4
  %42 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %44, i32 0, i32 1
  %46 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %45, align 8
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %48 = load i32, i32* @BTC_GET_U1_WIFI_CENTRAL_CHNL, align 4
  %49 = call i32 %46(%struct.btc_coexist* %47, i32 %48, i64* %8)
  %50 = load i64, i64* @BTC_MEDIA_CONNECT, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %43
  %54 = load i64, i64* %8, align 8
  %55 = icmp sle i64 %54, 14
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  store i64 1, i64* %57, align 16
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %58, i64* %59, align 8
  %60 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %61 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %60, i32 0, i32 1
  %62 = load i32 (%struct.btc_coexist*, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i64*)** %61, align 8
  %63 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %64 = load i32, i32* @BTC_GET_U4_WIFI_BW, align 4
  %65 = call i32 %62(%struct.btc_coexist* %63, i32 %64, i64* %7)
  %66 = load i64, i64* @BTC_WIFI_BW_HT40, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 48, i64* %70, align 16
  br label %73

71:                                               ; preds = %56
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 32, i64* %72, align 16
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %53, %43
  %75 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %76 = load i64, i64* %75, align 16
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  store i64 %76, i64* %80, align 8
  %81 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  store i64 %82, i64* %86, align 8
  %87 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %88 = load i64, i64* %87, align 16
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  store i64 %88, i64* %92, align 8
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %94 = load i32, i32* @COMP_BT_COEXIST, align 4
  %95 = load i32, i32* @DBG_LOUD, align 4
  %96 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %97 = load i64, i64* %96, align 16
  %98 = shl i64 %97, 16
  %99 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = shl i64 %100, 8
  %102 = or i64 %98, %101
  %103 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %104 = load i64, i64* %103, align 16
  %105 = or i64 %102, %104
  %106 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %93, i32 %94, i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %105)
  %107 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %108 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %107, i32 0, i32 0
  %109 = load i32 (%struct.btc_coexist*, i32, i32, i64*)*, i32 (%struct.btc_coexist*, i32, i32, i64*)** %108, align 8
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %111 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %112 = call i32 %109(%struct.btc_coexist* %110, i32 102, i32 3, i64* %111)
  br label %113

113:                                              ; preds = %74, %28
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
