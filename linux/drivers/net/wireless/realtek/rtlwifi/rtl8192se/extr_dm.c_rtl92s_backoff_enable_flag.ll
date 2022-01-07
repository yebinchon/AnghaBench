; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c_rtl92s_backoff_enable_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c_rtl92s_backoff_enable_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.false_alarm_statistics, %struct.dig_t }
%struct.false_alarm_statistics = type { i64 }
%struct.dig_t = type { i64, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92s_backoff_enable_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92s_backoff_enable_flag(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca %struct.false_alarm_statistics*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 1
  store %struct.dig_t* %9, %struct.dig_t** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  store %struct.false_alarm_statistics* %11, %struct.false_alarm_statistics** %5, align 8
  %12 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %13 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %16 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  %20 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %21 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 6
  %24 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %25 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %30 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %33 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %39

34:                                               ; preds = %19
  %35 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %36 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 6
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %28
  br label %70

40:                                               ; preds = %1
  %41 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %5, align 8
  %42 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %45 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %40
  %49 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %50 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 6
  %53 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %54 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %59 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %62 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %68

63:                                               ; preds = %48
  %64 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %65 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 6
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %63, %57
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %39
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
