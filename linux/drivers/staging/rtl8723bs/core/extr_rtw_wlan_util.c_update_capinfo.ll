; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_capinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_capinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64, i8* }

@cShortPreamble = common dso_local global i32 0, align 4
@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@HW_VAR_ACK_PREAMBLE = common dso_local global i32 0, align 4
@PREAMBLE_LONG = common dso_local global i64 0, align 8
@cIBSS = common dso_local global i32 0, align 4
@NON_SHORT_SLOT_TIME = common dso_local global i8* null, align 8
@WIRELESS_11_24N = common dso_local global i32 0, align 4
@WIRELESS_11A = common dso_local global i32 0, align 4
@WIRELESS_11_5N = common dso_local global i32 0, align 4
@WIRELESS_11AC = common dso_local global i32 0, align 4
@SHORT_SLOT_TIME = common dso_local global i8* null, align 8
@WIRELESS_11G = common dso_local global i32 0, align 4
@cShortSlotTime = common dso_local global i32 0, align 4
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
  %28 = bitcast i32* %7 to i8**
  %29 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %26, i32 %27, i8** %28)
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
  %43 = bitcast i32* %7 to i8**
  %44 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %41, i32 %42, i8** %43)
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
  %52 = load i8*, i8** @NON_SHORT_SLOT_TIME, align 8
  %53 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %54 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %99

55:                                               ; preds = %46
  %56 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %57 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WIRELESS_11_24N, align 4
  %60 = load i32, i32* @WIRELESS_11A, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @WIRELESS_11_5N, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @WIRELESS_11AC, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %58, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load i8*, i8** @SHORT_SLOT_TIME, align 8
  %70 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %71 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %98

72:                                               ; preds = %55
  %73 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %74 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @WIRELESS_11G, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @cShortSlotTime, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i8*, i8** @SHORT_SLOT_TIME, align 8
  %86 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %87 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %92

88:                                               ; preds = %79
  %89 = load i8*, i8** @NON_SHORT_SLOT_TIME, align 8
  %90 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %91 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %97

93:                                               ; preds = %72
  %94 = load i8*, i8** @NON_SHORT_SLOT_TIME, align 8
  %95 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %96 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %93, %92
  br label %98

98:                                               ; preds = %97, %68
  br label %99

99:                                               ; preds = %98, %51
  %100 = load %struct.adapter*, %struct.adapter** %3, align 8
  %101 = load i32, i32* @HW_VAR_SLOT_TIME, align 4
  %102 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %103 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %102, i32 0, i32 1
  %104 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %100, i32 %101, i8** %103)
  ret void
}

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
