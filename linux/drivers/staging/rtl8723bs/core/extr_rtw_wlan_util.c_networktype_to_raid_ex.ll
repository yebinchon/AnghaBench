; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_networktype_to_raid_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_networktype_to_raid_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sta_info = type { i32, i32, i32 }

@RF_1T1R = common dso_local global i64 0, align 8
@HW_VAR_RF_TYPE = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i64 0, align 8
@RATEID_IDX_B = common dso_local global i64 0, align 8
@RATEID_IDX_G = common dso_local global i64 0, align 8
@RATEID_IDX_BG = common dso_local global i64 0, align 8
@RATEID_IDX_GN_N2SS = common dso_local global i64 0, align 8
@RATEID_IDX_GN_N1SS = common dso_local global i64 0, align 8
@CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@RATEID_IDX_BGN_20M_2SS_BN = common dso_local global i64 0, align 8
@RATEID_IDX_BGN_20M_1SS_BN = common dso_local global i64 0, align 8
@RATEID_IDX_BGN_40M_2SS = common dso_local global i64 0, align 8
@RATEID_IDX_BGN_40M_1SS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @networktype_to_raid_ex(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %8 = load i64, i64* @RF_1T1R, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load i32, i32* @HW_VAR_RF_TYPE, align 4
  %11 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %9, i32 %10, i64* %6)
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @RF_1T1R, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @RF_1T1R, align 8
  store i64 %16, i64* %7, align 8
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IsSupportedVHT(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -4194304
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @RF_2T2R, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %29, %23
  br label %48

32:                                               ; preds = %17
  %33 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IsSupportedHT(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -1048576
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @RF_2T2R, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %44, %38
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %31
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %93 [
    i32 135, label %53
    i32 137, label %55
    i32 131, label %55
    i32 134, label %57
    i32 129, label %59
    i32 128, label %59
    i32 136, label %59
    i32 130, label %59
    i32 132, label %68
    i32 133, label %68
  ]

53:                                               ; preds = %49
  %54 = load i64, i64* @RATEID_IDX_B, align 8
  store i64 %54, i64* %5, align 8
  br label %95

55:                                               ; preds = %49, %49
  %56 = load i64, i64* @RATEID_IDX_G, align 8
  store i64 %56, i64* %5, align 8
  br label %95

57:                                               ; preds = %49
  %58 = load i64, i64* @RATEID_IDX_BG, align 8
  store i64 %58, i64* %5, align 8
  br label %95

59:                                               ; preds = %49, %49, %49, %49
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @RF_2T2R, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @RATEID_IDX_GN_N2SS, align 8
  store i64 %64, i64* %5, align 8
  br label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @RATEID_IDX_GN_N1SS, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %65, %63
  br label %95

68:                                               ; preds = %49, %49
  %69 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CHANNEL_WIDTH_20, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @RF_2T2R, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* @RATEID_IDX_BGN_20M_2SS_BN, align 8
  store i64 %79, i64* %5, align 8
  br label %82

80:                                               ; preds = %74
  %81 = load i64, i64* @RATEID_IDX_BGN_20M_1SS_BN, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %80, %78
  br label %92

83:                                               ; preds = %68
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @RF_2T2R, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i64, i64* @RATEID_IDX_BGN_40M_2SS, align 8
  store i64 %88, i64* %5, align 8
  br label %91

89:                                               ; preds = %83
  %90 = load i64, i64* @RATEID_IDX_BGN_40M_1SS, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %89, %87
  br label %92

92:                                               ; preds = %91, %82
  br label %95

93:                                               ; preds = %49
  %94 = load i64, i64* @RATEID_IDX_BGN_40M_2SS, align 8
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %93, %92, %67, %57, %55, %53
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i64*) #1

declare dso_local i64 @IsSupportedVHT(i32) #1

declare dso_local i64 @IsSupportedHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
