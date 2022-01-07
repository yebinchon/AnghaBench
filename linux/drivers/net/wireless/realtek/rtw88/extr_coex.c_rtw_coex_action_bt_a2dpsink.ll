; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_a2dpsink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_a2dpsink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_efuse = type { i64 }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i64 }

@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_bt_a2dpsink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_bt_a2dpsink(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  %6 = alloca %struct.rtw_chip_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 2
  store %struct.rtw_coex* %11, %struct.rtw_coex** %3, align 8
  %12 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %13 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %12, i32 0, i32 0
  store %struct.rtw_coex_stat* %13, %struct.rtw_coex_stat** %4, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 1
  store %struct.rtw_efuse* %15, %struct.rtw_efuse** %5, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 0
  %18 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %17, align 8
  store %struct.rtw_chip_info* %18, %struct.rtw_chip_info** %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %20 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %35

27:                                               ; preds = %23
  %28 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 28, i32* %7, align 4
  store i32 20, i32* %8, align 4
  br label %34

33:                                               ; preds = %27
  store i32 28, i32* %7, align 4
  store i32 26, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %26
  br label %42

36:                                               ; preds = %1
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 100, i32* %7, align 4
  store i32 100, i32* %8, align 4
  br label %41

40:                                               ; preds = %36
  store i32 119, i32* %7, align 4
  store i32 120, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %44 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %45 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %43, i32 0, i32 %44)
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %47 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %48 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %46, i32 %51)
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @rtw_coex_table(%struct.rtw_dev* %53, i32 %54)
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %56, i32 0, i32 %57)
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
