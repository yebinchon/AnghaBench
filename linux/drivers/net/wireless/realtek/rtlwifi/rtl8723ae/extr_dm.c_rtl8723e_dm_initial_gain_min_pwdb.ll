; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_initial_gain_min_pwdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_initial_gain_min_pwdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.dig_t }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.dig_t = type { i64, i64 }
%struct.rtl_mac = type { i64, i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@DIG_MULTISTA_CONNECT = common dso_local global i64 0, align 8
@DIG_STA_CONNECT = common dso_local global i64 0, align 8
@DIG_STA_BEFORE_CONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl8723e_dm_initial_gain_min_pwdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8723e_dm_initial_gain_min_pwdb(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.dig_t*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 2
  store %struct.dig_t* %11, %struct.dig_t** %5, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAC80211_LINKED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %21 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %111

32:                                               ; preds = %25, %19, %1
  %33 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %34 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DIG_MULTISTA_CONNECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %32
  %39 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %40 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DIG_STA_CONNECT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %38
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %44
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %54, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  br label %70

65:                                               ; preds = %50
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i64 [ %64, %60 ], [ %69, %65 ]
  store i64 %71, i64* %7, align 8
  br label %77

72:                                               ; preds = %44
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %72, %70
  br label %108

78:                                               ; preds = %38, %32
  %79 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %80 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DIG_STA_CONNECT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %86 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DIG_STA_BEFORE_CONNECT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84, %78
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %92 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %7, align 8
  br label %107

95:                                               ; preds = %84
  %96 = load %struct.dig_t*, %struct.dig_t** %5, align 8
  %97 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DIG_MULTISTA_CONNECT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %101, %95
  br label %107

107:                                              ; preds = %106, %90
  br label %108

108:                                              ; preds = %107, %77
  %109 = load i64, i64* %7, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %108, %31
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
