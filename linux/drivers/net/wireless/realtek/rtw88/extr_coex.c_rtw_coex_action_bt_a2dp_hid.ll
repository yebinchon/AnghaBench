; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_a2dp_hid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_a2dp_hid.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_bt_a2dp_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_bt_a2dp_hid(%struct.rtw_dev* %0) #0 {
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
  br i1 %25, label %26, label %42

26:                                               ; preds = %1
  %27 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %28 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 26, i32* %8, align 4
  br label %33

32:                                               ; preds = %26
  store i32 9, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %35 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @TDMA_4SLOT, align 4
  store i32 %39, i32* %10, align 4
  store i32 13, i32* %9, align 4
  br label %41

40:                                               ; preds = %33
  store i32 14, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %38
  br label %60

42:                                               ; preds = %1
  %43 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %44 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 121, i32* %8, align 4
  br label %49

48:                                               ; preds = %42
  store i32 113, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %51 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @COEX_RSSI_HIGH(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 112, i32* %9, align 4
  br label %59

58:                                               ; preds = %49
  store i32 113, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %62 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %63 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %61, i32 0, i32 %62)
  %64 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %65 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %66 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %64, i32 %69)
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @rtw_coex_table(%struct.rtw_dev* %71, i32 %72)
  %74 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %74, i32 0, i32 %77)
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
