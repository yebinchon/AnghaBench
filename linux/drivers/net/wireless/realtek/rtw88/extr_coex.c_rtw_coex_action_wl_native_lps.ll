; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_wl_native_lps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_wl_native_lps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_efuse = type { i64 }
%struct.rtw_coex = type { i64 }

@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_wl_native_lps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_wl_native_lps(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_efuse*, align 8
  %5 = alloca %struct.rtw_chip_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 2
  store %struct.rtw_coex* %9, %struct.rtw_coex** %3, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 1
  store %struct.rtw_efuse* %11, %struct.rtw_efuse** %4, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  %14 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %13, align 8
  store %struct.rtw_chip_info* %14, %struct.rtw_chip_info** %5, align 8
  %15 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %16 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %22 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 28, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %27

26:                                               ; preds = %20
  store i32 100, i32* %6, align 4
  store i32 100, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %29 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %30 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %28, i32 1, i32 %29)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %32 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %33 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %31, i32 %36)
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @rtw_coex_table(%struct.rtw_dev* %38, i32 %39)
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %41, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %27, %19
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
