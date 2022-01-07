; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_ex_btc8192e2ant_scan_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_ex_btc8192e2ant_scan_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_SCAN_START = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[BTCoex], SCAN START notify\0A\00", align 1
@BTC_SCAN_FINISH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"[BTCoex], SCAN FINISH notify\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8192e2ant_scan_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 0
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load i64, i64* @BTC_SCAN_START, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %27

17:                                               ; preds = %2
  %18 = load i64, i64* @BTC_SCAN_FINISH, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = load i32, i32* @COMP_BT_COEXIST, align 4
  %24 = load i32, i32* @DBG_LOUD, align 4
  %25 = call i32 @RT_TRACE(%struct.rtl_priv* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %17
  br label %27

27:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
