; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_ps.c_wl1251_ps_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_ps.c_wl1251_ps_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, i32 }

@DEBUG_PSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"entering psm\00", align 1
@WAKE_UP_EVENT_DTIM_BITMAP = common dso_local global i32 0, align 4
@WL1251_ACX_BET_ENABLE = common dso_local global i32 0, align 4
@WL1251_DEFAULT_BET_CONSECUTIVE = common dso_local global i32 0, align 4
@CHIP_POWER_SAVE_MODE = common dso_local global i32 0, align 4
@WL1251_PSM_ELP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"entering idle\00", align 1
@CMD_DISCONNECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"leaving psm\00", align 1
@WL1251_PSM_CAM = common dso_local global i32 0, align 4
@WL1251_ACX_BET_DISABLE = common dso_local global i32 0, align 4
@CHIP_ACTIVE_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_ps_set_mode(%struct.wl1251* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %74 [
    i32 128, label %8
    i32 129, label %54
    i32 130, label %73
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @DEBUG_PSM, align 4
  %10 = call i32 @wl1251_debug(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %12 = call i32 @wl1251_acx_beacon_filter_opt(%struct.wl1251* %11, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %125

17:                                               ; preds = %8
  %18 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %19 = load i32, i32* @WAKE_UP_EVENT_DTIM_BITMAP, align 4
  %20 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %21 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wl1251_acx_wake_up_conditions(%struct.wl1251* %18, i32 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %125

28:                                               ; preds = %17
  %29 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %30 = load i32, i32* @WL1251_ACX_BET_ENABLE, align 4
  %31 = load i32, i32* @WL1251_DEFAULT_BET_CONSECUTIVE, align 4
  %32 = call i32 @wl1251_acx_bet_enable(%struct.wl1251* %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %125

37:                                               ; preds = %28
  %38 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %39 = load i32, i32* @CHIP_POWER_SAVE_MODE, align 4
  %40 = call i32 @wl1251_cmd_ps_mode(%struct.wl1251* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %125

45:                                               ; preds = %37
  %46 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %47 = load i32, i32* @WL1251_PSM_ELP, align 4
  %48 = call i32 @wl1251_acx_sleep_auth(%struct.wl1251* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %125

53:                                               ; preds = %45
  br label %120

54:                                               ; preds = %2
  %55 = load i32, i32* @DEBUG_PSM, align 4
  %56 = call i32 @wl1251_debug(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %58 = load i32, i32* @WL1251_PSM_ELP, align 4
  %59 = call i32 @wl1251_acx_sleep_auth(%struct.wl1251* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %125

64:                                               ; preds = %54
  %65 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %66 = load i32, i32* @CMD_DISCONNECT, align 4
  %67 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %65, i32 %66, i32* null, i32 0)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %125

72:                                               ; preds = %64
  br label %120

73:                                               ; preds = %2
  br label %74

74:                                               ; preds = %2, %73
  %75 = load i32, i32* @DEBUG_PSM, align 4
  %76 = call i32 @wl1251_debug(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %78 = load i32, i32* @WL1251_PSM_CAM, align 4
  %79 = call i32 @wl1251_acx_sleep_auth(%struct.wl1251* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %125

84:                                               ; preds = %74
  %85 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %86 = load i32, i32* @WL1251_ACX_BET_DISABLE, align 4
  %87 = load i32, i32* @WL1251_DEFAULT_BET_CONSECUTIVE, align 4
  %88 = call i32 @wl1251_acx_bet_enable(%struct.wl1251* %85, i32 %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %125

93:                                               ; preds = %84
  %94 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %95 = call i32 @wl1251_acx_beacon_filter_opt(%struct.wl1251* %94, i32 0)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %125

100:                                              ; preds = %93
  %101 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %102 = load i32, i32* @WAKE_UP_EVENT_DTIM_BITMAP, align 4
  %103 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %104 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @wl1251_acx_wake_up_conditions(%struct.wl1251* %101, i32 %102, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %125

111:                                              ; preds = %100
  %112 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %113 = load i32, i32* @CHIP_ACTIVE_MODE, align 4
  %114 = call i32 @wl1251_cmd_ps_mode(%struct.wl1251* %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %125

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %72, %53
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %123 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %120, %117, %109, %98, %91, %82, %70, %62, %51, %43, %35, %26, %15
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @wl1251_acx_beacon_filter_opt(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_acx_wake_up_conditions(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_acx_bet_enable(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_cmd_ps_mode(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_acx_sleep_auth(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_cmd_template_set(%struct.wl1251*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
