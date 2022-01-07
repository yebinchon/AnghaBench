; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_hid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_bt_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_chip_info*, %struct.rtw_efuse, %struct.rtw_coex }
%struct.TYPE_2__ = type { i64 }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_efuse = type { i64 }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i64, i64, i64, i64 }

@COEX_SET_ANT_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_bt_hid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_bt_hid(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  %6 = alloca %struct.rtw_chip_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 3
  store %struct.rtw_coex* %11, %struct.rtw_coex** %3, align 8
  %12 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %13 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %12, i32 0, i32 0
  store %struct.rtw_coex_stat* %13, %struct.rtw_coex_stat** %4, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 2
  store %struct.rtw_efuse* %15, %struct.rtw_efuse** %5, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 1
  %18 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %17, align 8
  store %struct.rtw_chip_info* %18, %struct.rtw_chip_info** %6, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %24 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %1
  %28 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %34 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 14, i32* %7, align 4
  br label %39

38:                                               ; preds = %32
  store i32 15, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %41 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %39
  store i32 18, i32* %8, align 4
  br label %56

48:                                               ; preds = %44
  %49 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %50 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 8, i32* %8, align 4
  br label %55

54:                                               ; preds = %48
  store i32 4, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %47
  br label %80

57:                                               ; preds = %27
  %58 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %59 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %57
  store i32 8, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %79

66:                                               ; preds = %62
  %67 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %68 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %73 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 12, i32* %7, align 4
  br label %78

77:                                               ; preds = %71, %66
  store i32 10, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %76
  store i32 4, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %56
  br label %103

81:                                               ; preds = %1
  %82 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %83 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 113, i32* %7, align 4
  store i32 118, i32* %8, align 4
  br label %102

87:                                               ; preds = %81
  %88 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %89 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  store i32 113, i32* %7, align 4
  %93 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %94 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 106, i32* %8, align 4
  br label %99

98:                                               ; preds = %92
  store i32 104, i32* %8, align 4
  br label %99

99:                                               ; preds = %98, %97
  br label %101

100:                                              ; preds = %87
  store i32 113, i32* %7, align 4
  store i32 104, i32* %8, align 4
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %101, %86
  br label %103

103:                                              ; preds = %102, %80
  %104 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %105 = load i32, i32* @COEX_SET_ANT_2G, align 4
  %106 = call i32 @rtw_coex_set_ant_path(%struct.rtw_dev* %104, i32 0, i32 %105)
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %108 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %109 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rtw_coex_set_rf_para(%struct.rtw_dev* %107, i32 %112)
  %114 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @rtw_coex_table(%struct.rtw_dev* %114, i32 %115)
  %117 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @rtw_coex_tdma(%struct.rtw_dev* %117, i32 0, i32 %118)
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
