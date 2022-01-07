; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_set_ant_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_set_ant_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { %struct.rtw_coex_dm, %struct.rtw_coex_stat }
%struct.rtw_coex_dm = type { i32 }
%struct.rtw_coex_stat = type { i32 }

@COEX_SWITCH_CTRL_MAX = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_MAX = common dso_local global i32 0, align 4
@COEX_SWITCH_CTRL_BY_BBSW = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_BT = common dso_local global i32 0, align 4
@COEX_GNT_SET_SW_LOW = common dso_local global i32 0, align 4
@COEX_GNT_SET_SW_HIGH = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_WLG = common dso_local global i32 0, align 4
@COEX_SWITCH_CTRL_BY_BT = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_NOCARE = common dso_local global i32 0, align 4
@COEX_GNT_SET_HW_PTA = common dso_local global i32 0, align 4
@COEX_SWITCH_CTRL_BY_PTA = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_WLA = common dso_local global i32 0, align 4
@COEX_SWITCH_TO_WLG_BT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unknown phase when setting antenna path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32)* @rtw_coex_set_ant_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_set_ant_path(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_coex*, align 8
  %8 = alloca %struct.rtw_coex_stat*, align 8
  %9 = alloca %struct.rtw_coex_dm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  store %struct.rtw_coex* %13, %struct.rtw_coex** %7, align 8
  %14 = load %struct.rtw_coex*, %struct.rtw_coex** %7, align 8
  %15 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %14, i32 0, i32 1
  store %struct.rtw_coex_stat* %15, %struct.rtw_coex_stat** %8, align 8
  %16 = load %struct.rtw_coex*, %struct.rtw_coex** %7, align 8
  %17 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %16, i32 0, i32 0
  store %struct.rtw_coex_dm* %17, %struct.rtw_coex_dm** %9, align 8
  %18 = load i32, i32* @COEX_SWITCH_CTRL_MAX, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @COEX_SWITCH_TO_MAX, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %9, align 8
  %24 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %149

29:                                               ; preds = %22, %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %9, align 8
  %32 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %34 = call i32 @rtw_coex_check_rfk(%struct.rtw_dev* %33)
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %134 [
    i32 130, label %36
    i32 131, label %50
    i32 128, label %74
    i32 129, label %85
    i32 135, label %90
    i32 132, label %101
    i32 134, label %112
    i32 133, label %123
  ]

36:                                               ; preds = %29
  %37 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %38 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %43 = call i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev* %42, i32 1)
  br label %47

44:                                               ; preds = %36
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %46 = call i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev* %45, i32 0)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @COEX_SWITCH_CTRL_BY_BBSW, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @COEX_SWITCH_TO_BT, align 4
  store i32 %49, i32* %11, align 4
  br label %136

50:                                               ; preds = %29
  %51 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %52 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %57 = load i32, i32* @COEX_GNT_SET_SW_LOW, align 4
  %58 = call i32 @rtw_coex_set_gnt_bt(%struct.rtw_dev* %56, i32 %57)
  %59 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %60 = load i32, i32* @COEX_GNT_SET_SW_HIGH, align 4
  %61 = call i32 @rtw_coex_set_gnt_wl(%struct.rtw_dev* %59, i32 %60)
  br label %69

62:                                               ; preds = %50
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %64 = load i32, i32* @COEX_GNT_SET_SW_HIGH, align 4
  %65 = call i32 @rtw_coex_set_gnt_bt(%struct.rtw_dev* %63, i32 %64)
  %66 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %67 = load i32, i32* @COEX_GNT_SET_SW_LOW, align 4
  %68 = call i32 @rtw_coex_set_gnt_wl(%struct.rtw_dev* %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %55
  %70 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %71 = call i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev* %70, i32 1)
  %72 = load i32, i32* @COEX_SWITCH_CTRL_BY_BBSW, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @COEX_SWITCH_TO_BT, align 4
  store i32 %73, i32* %11, align 4
  br label %136

74:                                               ; preds = %29
  %75 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %76 = load i32, i32* @COEX_GNT_SET_SW_LOW, align 4
  %77 = call i32 @rtw_coex_set_gnt_bt(%struct.rtw_dev* %75, i32 %76)
  %78 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %79 = load i32, i32* @COEX_GNT_SET_SW_HIGH, align 4
  %80 = call i32 @rtw_coex_set_gnt_wl(%struct.rtw_dev* %78, i32 %79)
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %82 = call i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev* %81, i32 1)
  %83 = load i32, i32* @COEX_SWITCH_CTRL_BY_BBSW, align 4
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* @COEX_SWITCH_TO_WLG, align 4
  store i32 %84, i32* %11, align 4
  br label %136

85:                                               ; preds = %29
  %86 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %87 = call i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev* %86, i32 0)
  %88 = load i32, i32* @COEX_SWITCH_CTRL_BY_BT, align 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* @COEX_SWITCH_TO_NOCARE, align 4
  store i32 %89, i32* %11, align 4
  br label %136

90:                                               ; preds = %29
  %91 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %92 = load i32, i32* @COEX_GNT_SET_HW_PTA, align 4
  %93 = call i32 @rtw_coex_set_gnt_bt(%struct.rtw_dev* %91, i32 %92)
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %95 = load i32, i32* @COEX_GNT_SET_HW_PTA, align 4
  %96 = call i32 @rtw_coex_set_gnt_wl(%struct.rtw_dev* %94, i32 %95)
  %97 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %98 = call i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev* %97, i32 1)
  %99 = load i32, i32* @COEX_SWITCH_CTRL_BY_PTA, align 4
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* @COEX_SWITCH_TO_NOCARE, align 4
  store i32 %100, i32* %11, align 4
  br label %136

101:                                              ; preds = %29
  %102 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %103 = load i32, i32* @COEX_GNT_SET_SW_HIGH, align 4
  %104 = call i32 @rtw_coex_set_gnt_bt(%struct.rtw_dev* %102, i32 %103)
  %105 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %106 = load i32, i32* @COEX_GNT_SET_SW_HIGH, align 4
  %107 = call i32 @rtw_coex_set_gnt_wl(%struct.rtw_dev* %105, i32 %106)
  %108 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %109 = call i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev* %108, i32 1)
  %110 = load i32, i32* @COEX_SWITCH_CTRL_BY_BBSW, align 4
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* @COEX_SWITCH_TO_WLA, align 4
  store i32 %111, i32* %11, align 4
  br label %136

112:                                              ; preds = %29
  %113 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %114 = load i32, i32* @COEX_GNT_SET_SW_HIGH, align 4
  %115 = call i32 @rtw_coex_set_gnt_bt(%struct.rtw_dev* %113, i32 %114)
  %116 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %117 = load i32, i32* @COEX_GNT_SET_SW_HIGH, align 4
  %118 = call i32 @rtw_coex_set_gnt_wl(%struct.rtw_dev* %116, i32 %117)
  %119 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %120 = call i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev* %119, i32 1)
  %121 = load i32, i32* @COEX_SWITCH_CTRL_BY_BBSW, align 4
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* @COEX_SWITCH_TO_WLG_BT, align 4
  store i32 %122, i32* %11, align 4
  br label %136

123:                                              ; preds = %29
  %124 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %125 = load i32, i32* @COEX_GNT_SET_HW_PTA, align 4
  %126 = call i32 @rtw_coex_set_gnt_bt(%struct.rtw_dev* %124, i32 %125)
  %127 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %128 = load i32, i32* @COEX_GNT_SET_HW_PTA, align 4
  %129 = call i32 @rtw_coex_set_gnt_wl(%struct.rtw_dev* %127, i32 %128)
  %130 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %131 = call i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev* %130, i32 1)
  %132 = load i32, i32* @COEX_SWITCH_CTRL_BY_BBSW, align 4
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* @COEX_SWITCH_TO_WLG_BT, align 4
  store i32 %133, i32* %11, align 4
  br label %136

134:                                              ; preds = %29
  %135 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %149

136:                                              ; preds = %123, %112, %101, %90, %85, %74, %69, %47
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @COEX_SWITCH_CTRL_MAX, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @COEX_SWITCH_TO_MAX, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @rtw_coex_set_ant_switch(%struct.rtw_dev* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %28, %134, %144, %140, %136
  ret void
}

declare dso_local i32 @rtw_coex_check_rfk(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_coex_ctrl_owner(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_set_gnt_bt(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_set_gnt_wl(%struct.rtw_dev*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @rtw_coex_set_ant_switch(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
