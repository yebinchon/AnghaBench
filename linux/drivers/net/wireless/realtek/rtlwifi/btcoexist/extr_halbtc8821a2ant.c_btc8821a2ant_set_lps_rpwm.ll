; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_lps_rpwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a2ant.c_btc8821a2ant_set_lps_rpwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)* }

@BTC_SET_U1_LPS_VAL = common dso_local global i32 0, align 4
@BTC_SET_U1_RPWM_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32)* @btc8821a2ant_set_lps_rpwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a2ant_set_lps_rpwm(%struct.btc_coexist* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btc_coexist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %12 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %11, i32 0, i32 0
  %13 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %12, align 8
  %14 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %15 = load i32, i32* @BTC_SET_U1_LPS_VAL, align 4
  %16 = call i32 %13(%struct.btc_coexist* %14, i32 %15, i32* %7)
  %17 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %18 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %17, i32 0, i32 0
  %19 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %18, align 8
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %4, align 8
  %21 = load i32, i32* @BTC_SET_U1_RPWM_VAL, align 4
  %22 = call i32 %19(%struct.btc_coexist* %20, i32 %21, i32* %8)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
