; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_efuse = type { i64 }
%struct.rtw_coex = type { %struct.rtw_coex_rfe, %struct.rtw_coex_dm, %struct.rtw_coex_stat }
%struct.rtw_coex_rfe = type { i64 }
%struct.rtw_coex_dm = type { i64, i32* }
%struct.rtw_coex_stat = type { i32, i32 }

@COEX_BTSTATUS_NCON_IDLE = common dso_local global i64 0, align 8
@COEX_SET_ANT_2G_FREERUN = common dso_local global i32 0, align 4
@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_bt_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_bt_idle(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_coex_dm*, align 8
  %6 = alloca %struct.rtw_efuse*, align 8
  %7 = alloca %struct.rtw_chip_info*, align 8
  %8 = alloca %struct.rtw_coex_rfe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 2
  store %struct.rtw_coex* %12, %struct.rtw_coex** %3, align 8
  %13 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %14 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %13, i32 0, i32 2
  store %struct.rtw_coex_stat* %14, %struct.rtw_coex_stat** %4, align 8
  %15 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %16 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %15, i32 0, i32 1
  store %struct.rtw_coex_dm* %16, %struct.rtw_coex_dm** %5, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 1
  store %struct.rtw_efuse* %18, %struct.rtw_efuse** %6, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %19, i32 0, i32 0
  %21 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %20, align 8
  store %struct.rtw_chip_info* %21, %struct.rtw_chip_info** %7, align 8
  %22 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %23 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %22, i32 0, i32 0
  store %struct.rtw_coex_rfe* %23, %struct.rtw_coex_rfe** %8, align 8
  store i32 255, i32* %9, align 4
  store i32 255, i32* %10, align 4
  %24 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %8, align 8
  %25 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %1
  %29 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %30 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @COEX_BTSTATUS_NCON_IDLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %36 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %41 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @COEX_RSSI_HIGH(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %55

48:                                               ; preds = %39, %34
  %49 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %50 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 100, i32* %9, align 4
  store i32 100, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %48
  br label %55

55:                                               ; preds = %54, %47
  br label %56

56:                                               ; preds = %55, %28, %1
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 255
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %64 = load i32, i32* @COEX_SET_ANT_2G_FREERUN, align 4
  %65 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %63, i32 0, i32 %64)
  %66 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @rtw_coex_table(%struct.rtw_dev* %66, i32 %67)
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %69, i32 0, i32 %70)
  br label %132

72:                                               ; preds = %59, %56
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %74 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %75 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %73, i32 0, i32 %74)
  %76 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %77 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %72
  %81 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %82 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 10, i32* %9, align 4
  store i32 3, i32* %10, align 4
  br label %95

86:                                               ; preds = %80
  %87 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %88 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @COEX_BTSTATUS_NCON_IDLE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 6, i32* %9, align 4
  store i32 7, i32* %10, align 4
  br label %94

93:                                               ; preds = %86
  store i32 12, i32* %9, align 4
  store i32 7, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %92
  br label %95

95:                                               ; preds = %94, %85
  br label %118

96:                                               ; preds = %72
  %97 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %98 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 112, i32* %9, align 4
  store i32 104, i32* %10, align 4
  br label %117

102:                                              ; preds = %96
  %103 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %104 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 2
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %110 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @COEX_BTSTATUS_NCON_IDLE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 114, i32* %9, align 4
  store i32 103, i32* %10, align 4
  br label %116

115:                                              ; preds = %108, %102
  store i32 112, i32* %9, align 4
  store i32 103, i32* %10, align 4
  br label %116

116:                                              ; preds = %115, %114
  br label %117

117:                                              ; preds = %116, %101
  br label %118

118:                                              ; preds = %117, %95
  %119 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %120 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %7, align 8
  %121 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %119, i32 %124)
  %126 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @rtw_coex_table(%struct.rtw_dev* %126, i32 %127)
  %129 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %129, i32 0, i32 %130)
  br label %132

132:                                              ; preds = %118, %62
  ret void
}

declare dso_local i64 @COEX_RSSI_HIGH(i32) #1

declare dso_local i32 @rtw_coex_set_ant_path(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_table(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_tdma(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_set_rf_para(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
