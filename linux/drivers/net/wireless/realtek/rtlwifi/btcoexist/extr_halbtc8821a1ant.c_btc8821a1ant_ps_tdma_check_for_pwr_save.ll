; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_ps_tdma_check_for_pwr_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_btc8821a1ant_ps_tdma_check_for_pwr_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)* }

@BTC_GET_U1_LPS_MODE = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i32)* @btc8821a1ant_ps_tdma_check_for_pwr_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8821a1ant_ps_tdma_check_for_pwr_save(%struct.btc_coexist* %0, i32 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 0
  %8 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %7, align 8
  %9 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %10 = load i32, i32* @BTC_GET_U1_LPS_MODE, align 4
  %11 = call i32 %8(%struct.btc_coexist* %9, i32 %10, i32* %5)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %22

18:                                               ; preds = %14
  %19 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %20 = load i32, i32* @NORMAL_EXEC, align 4
  %21 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %19, i32 %20, i32 0, i32 0)
  br label %22

22:                                               ; preds = %18, %17
  br label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %28 = load i32, i32* @NORMAL_EXEC, align 4
  %29 = call i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist* %27, i32 %28, i32 0, i32 0)
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %26
  br label %32

32:                                               ; preds = %31, %22
  ret void
}

declare dso_local i32 @btc8821a1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
