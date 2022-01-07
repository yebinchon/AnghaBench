; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_efuse = type { i64 }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32, i64, i64, i32, i64, i64, i64 }

@RTW_DBG_COEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"coex: wifi hi(%d), bt page(%d)\0A\00", align 1
@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_bt_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_bt_inquiry(%struct.rtw_dev* %0) #0 {
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
  store i32 0, i32* %7, align 4
  %19 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %20 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %25 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %30 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23, %1
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %36 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  store i32 15, i32* %8, align 4
  %43 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %44 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %49 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 11, i32* %9, align 4
  br label %68

53:                                               ; preds = %47, %42
  %54 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %55 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 6, i32* %9, align 4
  br label %67

59:                                               ; preds = %53
  %60 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %61 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 8, i32* %9, align 4
  br label %66

65:                                               ; preds = %59
  store i32 9, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %58
  br label %68

68:                                               ; preds = %67, %52
  br label %77

69:                                               ; preds = %39
  %70 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %71 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 10, i32* %8, align 4
  store i32 10, i32* %9, align 4
  br label %76

75:                                               ; preds = %69
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %68
  br label %117

78:                                               ; preds = %34
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %78
  store i32 113, i32* %8, align 4
  %82 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %83 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %88 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i32 111, i32* %9, align 4
  br label %107

92:                                               ; preds = %86, %81
  %93 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %94 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 106, i32* %9, align 4
  br label %106

98:                                               ; preds = %92
  %99 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %100 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 108, i32* %9, align 4
  br label %105

104:                                              ; preds = %98
  store i32 109, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %97
  br label %107

107:                                              ; preds = %106, %91
  br label %116

108:                                              ; preds = %78
  %109 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %110 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 101, i32* %8, align 4
  store i32 110, i32* %9, align 4
  br label %115

114:                                              ; preds = %108
  store i32 100, i32* %8, align 4
  store i32 100, i32* %9, align 4
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %107
  br label %117

117:                                              ; preds = %116, %77
  %118 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %119 = load i32, i32* @RTW_DBG_COEX, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %122 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @rtw_dbg(%struct.rtw_dev* %118, i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %126 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %127 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %125, i32 0, i32 %126)
  %128 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %129 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %130 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %128, i32 %133)
  %135 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @rtw_coex_table(%struct.rtw_dev* %135, i32 %136)
  %138 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %138, i32 0, i32 %139)
  ret void
}

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32) #1

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
