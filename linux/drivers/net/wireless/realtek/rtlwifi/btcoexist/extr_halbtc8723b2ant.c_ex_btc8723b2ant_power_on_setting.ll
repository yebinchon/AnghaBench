; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_power_on_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b2ant.c_ex_btc8723b2ant_power_on_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32)*, i64, i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)*, %struct.btc_board_info }
%struct.btc_board_info = type { i32, i8* }

@BIT0 = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BTC_INTF_USB = common dso_local global i64 0, align 8
@BTC_ANTENNA_AT_AUX_PORT = common dso_local global i8* null, align 8
@BTC_ANTENNA_AT_MAIN_PORT = common dso_local global i8* null, align 8
@BTC_SET_ACT_ANTPOSREGRISTRY_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b2ant_power_on_setting(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  %3 = alloca %struct.btc_board_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %6 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %7 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %6, i32 0, i32 6
  store %struct.btc_board_info* %7, %struct.btc_board_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 5
  %10 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %9, align 8
  %11 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %12 = call i32 %10(%struct.btc_coexist* %11, i32 103, i32 32)
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 0
  %15 = load i32 (%struct.btc_coexist*, i32)*, i32 (%struct.btc_coexist*, i32)** %14, align 8
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %17 = call i32 %15(%struct.btc_coexist* %16, i32 2)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %19 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %18, i32 0, i32 4
  %20 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %19, align 8
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BIT0, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BIT1, align 4
  %26 = or i32 %24, %25
  %27 = call i32 %20(%struct.btc_coexist* %21, i32 2, i32 %26)
  %28 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %29 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %28, i32 0, i32 3
  %30 = load i32 (%struct.btc_coexist*, i32, i32)*, i32 (%struct.btc_coexist*, i32, i32)** %29, align 8
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %32 = call i32 %30(%struct.btc_coexist* %31, i32 2376, i32 0)
  %33 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %34 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BTC_INTF_USB, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i8*, i8** @BTC_ANTENNA_AT_AUX_PORT, align 8
  %40 = load %struct.btc_board_info*, %struct.btc_board_info** %3, align 8
  %41 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %68

42:                                               ; preds = %1
  %43 = load %struct.btc_board_info*, %struct.btc_board_info** %3, align 8
  %44 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** @BTC_ANTENNA_AT_MAIN_PORT, align 8
  %49 = load %struct.btc_board_info*, %struct.btc_board_info** %3, align 8
  %50 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %61

51:                                               ; preds = %42
  %52 = load %struct.btc_board_info*, %struct.btc_board_info** %3, align 8
  %53 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8*, i8** @BTC_ANTENNA_AT_AUX_PORT, align 8
  %58 = load %struct.btc_board_info*, %struct.btc_board_info** %3, align 8
  %59 = getelementptr inbounds %struct.btc_board_info, %struct.btc_board_info* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %63 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %62, i32 0, i32 2
  %64 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %63, align 8
  %65 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %66 = load i32, i32* @BTC_SET_ACT_ANTPOSREGRISTRY_CTRL, align 4
  %67 = call i32 %64(%struct.btc_coexist* %65, i32 %66, i32* %5)
  br label %68

68:                                               ; preds = %61, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
