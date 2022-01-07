; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_freerun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_freerun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_chip_info = type { i32, i32*, i32* }
%struct.rtw_efuse = type { i64 }
%struct.rtw_coex = type { i32, %struct.rtw_coex_dm, %struct.rtw_coex_stat }
%struct.rtw_coex_dm = type { i32* }
%struct.rtw_coex_stat = type { i64, i64 }

@COEX_MEDIA_CONNECT = common dso_local global i32 0, align 4
@COEX_SET_ANT_2G_FREERUN = common dso_local global i32 0, align 4
@COEX_SCBD_FIX2M = common dso_local global i32 0, align 4
@COEX_WL_TPUT_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_freerun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_freerun(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_coex_dm*, align 8
  %6 = alloca %struct.rtw_efuse*, align 8
  %7 = alloca %struct.rtw_chip_info*, align 8
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 2
  store %struct.rtw_coex* %10, %struct.rtw_coex** %3, align 8
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 2
  store %struct.rtw_coex_stat* %12, %struct.rtw_coex_stat** %4, align 8
  %13 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %14 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %13, i32 0, i32 1
  store %struct.rtw_coex_dm* %14, %struct.rtw_coex_dm** %5, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 1
  store %struct.rtw_efuse* %16, %struct.rtw_efuse** %6, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 0
  %19 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %18, align 8
  store %struct.rtw_chip_info* %19, %struct.rtw_chip_info** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %21 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %115

25:                                               ; preds = %1
  %26 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %27 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %34 = load i32, i32* @COEX_MEDIA_CONNECT, align 4
  %35 = call i32 @rtw_coex_update_wl_ch_info(%struct.rtw_dev* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %38 = load i32, i32* @COEX_SET_ANT_2G_FREERUN, align 4
  %39 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %37, i32 0, i32 %38)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = load i32, i32* @COEX_SCBD_FIX2M, align 4
  %42 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %40, i32 %41, i32 0)
  %43 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %44 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @COEX_RSSI_HIGH(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 2, i32* %8, align 4
  br label %72

51:                                               ; preds = %36
  %52 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %53 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @COEX_RSSI_HIGH(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 3, i32* %8, align 4
  br label %71

60:                                               ; preds = %51
  %61 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %62 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @COEX_RSSI_HIGH(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 4, i32* %8, align 4
  br label %70

69:                                               ; preds = %60
  store i32 5, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %59
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %75 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = icmp sgt i32 %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %81 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %86 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @COEX_WL_TPUT_TX, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %92 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %93 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %91, i32 %98)
  br label %110

100:                                              ; preds = %84
  %101 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %102 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %103 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %101, i32 %108)
  br label %110

110:                                              ; preds = %100, %90
  %111 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %112 = call i32 @rtw_coex_table(%struct.rtw_dev* %111, i32 100)
  %113 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %114 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %113, i32 0, i32 100)
  br label %115

115:                                              ; preds = %110, %24
  ret void
}

declare dso_local i32 @rtw_coex_update_wl_ch_info(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_set_ant_path(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i64 @COEX_RSSI_HIGH(i32) #1

declare dso_local i32 @rtw_coex_set_rf_para(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_table(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_tdma(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
