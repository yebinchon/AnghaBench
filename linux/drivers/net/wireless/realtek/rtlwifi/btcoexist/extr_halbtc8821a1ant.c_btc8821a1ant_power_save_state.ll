; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_power_save_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_power_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)* }

@BTC_SET_ACT_DISABLE_LOW_POWER = common dso_local global i32 0, align 4
@BTC_SET_ACT_NORMAL_LPS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_SET_ACT_ENTER_LPS = common dso_local global i32 0, align 4
@BTC_SET_ACT_LEAVE_LPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32, i32, i32)* @btc8821a1ant_power_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_power_save_state(%struct.btc_coexist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btc_coexist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %53 [
    i32 128, label %11
    i32 129, label %24
    i32 130, label %44
  ]

11:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 0
  %14 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %13, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %16 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %17 = call i32 %14(%struct.btc_coexist* %15, i32 %16, i32* %9)
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 0
  %20 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %19, align 8
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %22 = load i32, i32* @BTC_SET_ACT_NORMAL_LPS, align 4
  %23 = call i32 %20(%struct.btc_coexist* %21, i32 %22, i32* null)
  br label %54

24:                                               ; preds = %4
  %25 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %26 = call i32 @btc8821a1ant_ps_tdma_check_for_pwr_save(%struct.btc_coexist* %25, i32 1)
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %28 = load i32, i32* @NORMAL_EXEC, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @btc8821a1ant_lps_rpwm(%struct.btc_coexist* %27, i32 %28, i32 %29, i32 %30)
  store i32 1, i32* %9, align 4
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %33 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %32, i32 0, i32 0
  %34 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %33, align 8
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %36 = load i32, i32* @BTC_SET_ACT_DISABLE_LOW_POWER, align 4
  %37 = call i32 %34(%struct.btc_coexist* %35, i32 %36, i32* %9)
  %38 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %39 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %38, i32 0, i32 0
  %40 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %39, align 8
  %41 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %42 = load i32, i32* @BTC_SET_ACT_ENTER_LPS, align 4
  %43 = call i32 %40(%struct.btc_coexist* %41, i32 %42, i32* null)
  br label %54

44:                                               ; preds = %4
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %46 = call i32 @btc8821a1ant_ps_tdma_check_for_pwr_save(%struct.btc_coexist* %45, i32 0)
  %47 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %48 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %47, i32 0, i32 0
  %49 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %48, align 8
  %50 = load %struct.btc_coexist*, %struct.btc_coexist** %5, align 8
  %51 = load i32, i32* @BTC_SET_ACT_LEAVE_LPS, align 4
  %52 = call i32 %49(%struct.btc_coexist* %50, i32 %51, i32* null)
  br label %54

53:                                               ; preds = %4
  br label %54

54:                                               ; preds = %53, %44, %24, %11
  ret void
}

declare dso_local i32 @btc8821a1ant_ps_tdma_check_for_pwr_save(%struct.btc_coexist*, i32) #1

declare dso_local i32 @btc8821a1ant_lps_rpwm(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
