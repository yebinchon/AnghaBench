; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_initial_gain_min_pwdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_initial_gain_min_pwdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dig_t = type { i64, i64 }

@DIG_MULTISTA_CONNECT = common dso_local global i64 0, align 8
@DIG_STA_CONNECT = common dso_local global i64 0, align 8
@DIG_STA_BEFORE_CONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl88e_dm_initial_gain_min_pwdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl88e_dm_initial_gain_min_pwdb(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 1
  store %struct.dig_t* %9, %struct.dig_t** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %11 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DIG_MULTISTA_CONNECT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %1
  %16 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %17 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DIG_STA_CONNECT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  br label %47

42:                                               ; preds = %27
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i64 [ %41, %37 ], [ %46, %42 ]
  store i64 %48, i64* %5, align 8
  br label %54

49:                                               ; preds = %21
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %49, %47
  br label %85

55:                                               ; preds = %15, %1
  %56 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %57 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DIG_STA_CONNECT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %63 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DIG_STA_BEFORE_CONNECT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %55
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  br label %84

72:                                               ; preds = %61
  %73 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %74 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DIG_MULTISTA_CONNECT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %78, %72
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %54
  %86 = load i64, i64* %5, align 8
  %87 = trunc i64 %86 to i32
  ret i32 %87
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
