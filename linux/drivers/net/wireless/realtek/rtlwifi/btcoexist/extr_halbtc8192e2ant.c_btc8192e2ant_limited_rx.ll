; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_limited_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8192e2ant.c_btc8192e2ant_limited_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)* }

@BTC_SET_BL_TO_REJ_AP_AGG_PKT = common dso_local global i32 0, align 4
@BTC_SET_BL_BT_CTRL_AGG_SIZE = common dso_local global i32 0, align 4
@BTC_SET_U1_AGG_BUF_SIZE = common dso_local global i32 0, align 4
@BTC_SET_ACT_AGGREGATE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32, i32)* @btc8192e2ant_limited_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8192e2ant_limited_rx(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.btc_coexist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 0
  %19 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %18, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %21 = load i32, i32* @BTC_SET_BL_TO_REJ_AP_AGG_PKT, align 4
  %22 = call i32 %19(%struct.btc_coexist* %20, i32 %21, i32* %11)
  %23 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %24 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %23, i32 0, i32 0
  %25 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %24, align 8
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %27 = load i32, i32* @BTC_SET_BL_BT_CTRL_AGG_SIZE, align 4
  %28 = call i32 %25(%struct.btc_coexist* %26, i32 %27, i32* %12)
  %29 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %30 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %29, i32 0, i32 0
  %31 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %30, align 8
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %33 = load i32, i32* @BTC_SET_U1_AGG_BUF_SIZE, align 4
  %34 = call i32 %31(%struct.btc_coexist* %32, i32 %33, i32* %13)
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %36 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %35, i32 0, i32 0
  %37 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %36, align 8
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %6, align 8
  %39 = load i32, i32* @BTC_SET_ACT_AGGREGATE_CTRL, align 4
  %40 = call i32 %37(%struct.btc_coexist* %38, i32 %39, i32* null)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
