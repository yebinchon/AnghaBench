; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_update_capinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_update_capinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64, i64 }

@cShortPreamble = common dso_local global i32 0, align 4
@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@HW_VAR_ACK_PREAMBLE = common dso_local global i32 0, align 4
@PREAMBLE_LONG = common dso_local global i64 0, align 8
@cIBSS = common dso_local global i32 0, align 4
@NON_SHORT_SLOT_TIME = common dso_local global i64 0, align 8
@WIRELESS_11G = common dso_local global i32 0, align 4
@WIRELESS_11_24N = common dso_local global i32 0, align 4
@cShortSlotTime = common dso_local global i32 0, align 4
@SHORT_SLOT_TIME = common dso_local global i64 0, align 8
@WIRELESS_11A = common dso_local global i32 0, align 4
@WIRELESS_11_5N = common dso_local global i32 0, align 4
@HW_VAR_SLOT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_capinfo(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlme_ext_priv*, align 8
  %6 = alloca %struct.mlme_ext_info*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.mlme_ext_priv* %9, %struct.mlme_ext_priv** %5, align 8
  %10 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %10, i32 0, i32 1
  store %struct.mlme_ext_info* %11, %struct.mlme_ext_info** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @cShortPreamble, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %18 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PREAMBLE_SHORT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  %23 = load i64, i64* @PREAMBLE_SHORT, align 8
  %24 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %25 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = load i32, i32* @HW_VAR_ACK_PREAMBLE, align 4
  %28 = bitcast i32* %7 to i64*
  %29 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %26, i32 %27, i64* %28)
  br label %30

30:                                               ; preds = %22, %16
  br label %46

31:                                               ; preds = %2
  %32 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %33 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PREAMBLE_LONG, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  %38 = load i64, i64* @PREAMBLE_LONG, align 8
  %39 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %40 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load i32, i32* @HW_VAR_ACK_PREAMBLE, align 4
  %43 = bitcast i32* %7 to i64*
  %44 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %41, i32 %42, i64* %43)
  br label %45

45:                                               ; preds = %37, %31
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @cIBSS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i64, i64* @NON_SHORT_SLOT_TIME, align 8
  %53 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %54 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %111

55:                                               ; preds = %46
  %56 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %57 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WIRELESS_11G, align 4
  %60 = load i32, i32* @WIRELESS_11_24N, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @cShortSlotTime, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %71 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SHORT_SLOT_TIME, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i64, i64* @SHORT_SLOT_TIME, align 8
  %77 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %78 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  br label %91

80:                                               ; preds = %64
  %81 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %82 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NON_SHORT_SLOT_TIME, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i64, i64* @NON_SHORT_SLOT_TIME, align 8
  %88 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %89 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %80
  br label %91

91:                                               ; preds = %90, %79
  br label %110

92:                                               ; preds = %55
  %93 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %94 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @WIRELESS_11A, align 4
  %97 = load i32, i32* @WIRELESS_11_5N, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load i64, i64* @SHORT_SLOT_TIME, align 8
  %103 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %104 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  br label %109

105:                                              ; preds = %92
  %106 = load i64, i64* @NON_SHORT_SLOT_TIME, align 8
  %107 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %108 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %101
  br label %110

110:                                              ; preds = %109, %91
  br label %111

111:                                              ; preds = %110, %51
  %112 = load %struct.adapter*, %struct.adapter** %3, align 8
  %113 = load i32, i32* @HW_VAR_SLOT_TIME, align 4
  %114 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %115 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %114, i32 0, i32 1
  %116 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %112, i32 %113, i64* %115)
  ret void
}

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
