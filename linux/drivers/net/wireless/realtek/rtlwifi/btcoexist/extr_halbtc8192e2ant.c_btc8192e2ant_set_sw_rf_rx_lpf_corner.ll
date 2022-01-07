; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_set_sw_rf_rx_lpf_corner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_set_sw_rf_rx_lpf_corner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], Shrink RF Rx LPF corner!!\0A\00", align 1
@BTC_RF_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"[BTCoex], Resume RF Rx LPF corner!!\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32)* @btc8192e2ant_set_sw_rf_rx_lpf_corner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_set_sw_rf_rx_lpf_corner(%struct.btc_coexist* %0, i32 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 2
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = load i32, i32* @COMP_BT_COEXIST, align 4
  %14 = load i32, i32* @DBG_LOUD, align 4
  %15 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 0
  %18 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %17, align 8
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = load i32, i32* @BTC_RF_A, align 4
  %21 = call i32 %18(%struct.btc_coexist* %19, i32 %20, i32 30, i32 1048575, i32 1048572)
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = load i32, i32* @COMP_BT_COEXIST, align 4
  %30 = load i32, i32* @DBG_LOUD, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %33 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %32, i32 0, i32 0
  %34 = load i32 (%struct.btc_coexist*, i32, i32, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32, i32, i32)** %33, align 8
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %36 = load i32, i32* @BTC_RF_A, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coex_dm, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %34(%struct.btc_coexist* %35, i32 %36, i32 30, i32 1048575, i32 %39)
  br label %41

41:                                               ; preds = %27, %22
  br label %42

42:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
