; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c_rtl_regd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c_rtl_regd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.regulatory_request = type opaque
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64* }
%struct.TYPE_3__ = type { i64 }
%struct.country_code_to_enum_rd = type { i64* }
%struct.regulatory_request.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@COMP_REGD = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"rtl: EEPROM regdomain: 0x%0x country code: %d\0A\00", align 1
@COUNTRY_CODE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"rtl: EEPROM indicates invalid country code, world wide 13 should be used\0A\00", align 1
@COUNTRY_CODE_WORLD_WIDE_13 = common dso_local global i64 0, align 8
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"rtl: Country alpha2 being used: %c%c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_regd_init(%struct.ieee80211_hw* %0, void (%struct.wiphy*, %struct.regulatory_request*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca void (%struct.wiphy*, %struct.regulatory_request*)*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.country_code_to_enum_rd*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store void (%struct.wiphy*, %struct.regulatory_request*)* %1, void (%struct.wiphy*, %struct.regulatory_request*)** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  store %struct.wiphy* %13, %struct.wiphy** %7, align 8
  store %struct.country_code_to_enum_rd* null, %struct.country_code_to_enum_rd** %8, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %15 = icmp eq %struct.wiphy* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %122

23:                                               ; preds = %16
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @channel_plan_to_country_code(i64 %27)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %33 = load i32, i32* @COMP_REGD, align 4
  %34 = load i32, i32* @DBG_DMESG, align 4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %42)
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @COUNTRY_CODE_MAX, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %23
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %52 = load i32, i32* @COMP_REGD, align 4
  %53 = load i32, i32* @DBG_DMESG, align 4
  %54 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i64, i64* @COUNTRY_CODE_WORLD_WIDE_13, align 8
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %50, %23
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.country_code_to_enum_rd* @_rtl_regd_find_country(i64 %63)
  store %struct.country_code_to_enum_rd* %64, %struct.country_code_to_enum_rd** %8, align 8
  %65 = load %struct.country_code_to_enum_rd*, %struct.country_code_to_enum_rd** %8, align 8
  %66 = icmp ne %struct.country_code_to_enum_rd* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %59
  %68 = load %struct.country_code_to_enum_rd*, %struct.country_code_to_enum_rd** %8, align 8
  %69 = getelementptr inbounds %struct.country_code_to_enum_rd, %struct.country_code_to_enum_rd* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 %72, i64* %77, align 8
  %78 = load %struct.country_code_to_enum_rd*, %struct.country_code_to_enum_rd** %8, align 8
  %79 = getelementptr inbounds %struct.country_code_to_enum_rd, %struct.country_code_to_enum_rd* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %84 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  store i64 %82, i64* %87, align 8
  br label %99

88:                                               ; preds = %59
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %90 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64 48, i64* %93, align 8
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %95 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  store i64 48, i64* %98, align 8
  br label %99

99:                                               ; preds = %88, %67
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %101 = load i32, i32* @COMP_REGD, align 4
  %102 = load i32, i32* @DBG_TRACE, align 4
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %104 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %108, i64 %114)
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %117 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %116, i32 0, i32 0
  %118 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %119 = load void (%struct.wiphy*, %struct.regulatory_request*)*, void (%struct.wiphy*, %struct.regulatory_request*)** %5, align 8
  %120 = bitcast void (%struct.wiphy*, %struct.regulatory_request*)* %119 to void (%struct.wiphy*, %struct.regulatory_request.0*)*
  %121 = call i32 @_rtl_regd_init_wiphy(%struct.TYPE_4__* %117, %struct.wiphy* %118, void (%struct.wiphy*, %struct.regulatory_request.0*)* %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %99, %20
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @channel_plan_to_country_code(i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local %struct.country_code_to_enum_rd* @_rtl_regd_find_country(i64) #1

declare dso_local i32 @_rtl_regd_init_wiphy(%struct.TYPE_4__*, %struct.wiphy*, void (%struct.wiphy*, %struct.regulatory_request.0*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
