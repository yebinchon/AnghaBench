; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_a2dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_a2dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_efuse = type { i64 }
%struct.rtw_coex = type { %struct.rtw_coex_dm, %struct.rtw_coex_stat }
%struct.rtw_coex_dm = type { i32* }
%struct.rtw_coex_stat = type { i64, i64 }

@TDMA_4SLOT = common dso_local global i32 0, align 4
@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_bt_a2dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_bt_a2dp(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_coex_dm*, align 8
  %6 = alloca %struct.rtw_efuse*, align 8
  %7 = alloca %struct.rtw_chip_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 2
  store %struct.rtw_coex* %12, %struct.rtw_coex** %3, align 8
  %13 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %14 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %13, i32 0, i32 1
  store %struct.rtw_coex_stat* %14, %struct.rtw_coex_stat** %4, align 8
  %15 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %16 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %15, i32 0, i32 0
  store %struct.rtw_coex_dm* %16, %struct.rtw_coex_dm** %5, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 1
  store %struct.rtw_efuse* %18, %struct.rtw_efuse** %6, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %19, i32 0, i32 0
  %21 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %20, align 8
  store %struct.rtw_chip_info* %21, %struct.rtw_chip_info** %7, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %23 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %1
  %27 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %28 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %33 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 10, i32* %8, align 4
  br label %38

37:                                               ; preds = %31, %26
  store i32 9, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* @TDMA_4SLOT, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %41 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 13, i32* %9, align 4
  br label %46

45:                                               ; preds = %38
  store i32 14, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %58

47:                                               ; preds = %1
  store i32 112, i32* %8, align 4
  %48 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %49 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @COEX_RSSI_HIGH(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 112, i32* %9, align 4
  br label %57

56:                                               ; preds = %47
  store i32 113, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %60 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %61 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %59, i32 0, i32 %60)
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %63 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %64 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %62, i32 %67)
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @rtw_coex_table(%struct.rtw_dev* %69, i32 %70)
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %72, i32 0, i32 %75)
  ret void
}

declare dso_local i64 @COEX_RSSI_HIGH(i32) #1

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
