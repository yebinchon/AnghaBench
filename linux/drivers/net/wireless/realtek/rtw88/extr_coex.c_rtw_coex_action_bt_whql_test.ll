; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_whql_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_whql_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_efuse }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_efuse = type { i64 }

@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_bt_whql_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_bt_whql_test(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_efuse*, align 8
  %4 = alloca %struct.rtw_chip_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 1
  store %struct.rtw_efuse* %8, %struct.rtw_efuse** %3, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 0
  %11 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %10, align 8
  store %struct.rtw_chip_info* %11, %struct.rtw_chip_info** %4, align 8
  %12 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %13 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 2, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

17:                                               ; preds = %1
  store i32 100, i32* %5, align 4
  store i32 100, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %20 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %21 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %19, i32 0, i32 %20)
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %23 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %24 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %22, i32 %27)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @rtw_coex_table(%struct.rtw_dev* %29, i32 %30)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %32, i32 0, i32 %33)
  ret void
}

declare dso_local i32 @rtw_coex_set_ant_path(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_set_rf_para(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_table(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_tdma(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
