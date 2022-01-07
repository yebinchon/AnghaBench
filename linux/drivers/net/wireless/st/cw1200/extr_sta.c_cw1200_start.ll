; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_2__*, %struct.cw1200_common* }
%struct.TYPE_2__ = type { i32 }
%struct.cw1200_common = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 1
  %7 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  store %struct.cw1200_common* %7, %struct.cw1200_common** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 7
  %10 = load i32, i32* @HZ, align 4
  %11 = call i32 @cw1200_pm_stay_awake(i32* %9, i32 %10)
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %13 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %12, i32 0, i32 3
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %16 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %15, i32 0, i32 6
  %17 = call i32 @WSM_EDCA_SET(i32* %16, i32 0, i32 2, i32 3, i32 7, i32 47, i32 200, i32 0)
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 6
  %20 = call i32 @WSM_EDCA_SET(i32* %19, i32 1, i32 2, i32 7, i32 15, i32 94, i32 200, i32 0)
  %21 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %22 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %21, i32 0, i32 6
  %23 = call i32 @WSM_EDCA_SET(i32* %22, i32 2, i32 3, i32 15, i32 1023, i32 0, i32 200, i32 0)
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 6
  %26 = call i32 @WSM_EDCA_SET(i32* %25, i32 3, i32 7, i32 15, i32 1023, i32 0, i32 200, i32 0)
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %28 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %29 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %28, i32 0, i32 6
  %30 = call i32 @wsm_set_edca_params(%struct.cw1200_common* %27, i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %68

34:                                               ; preds = %1
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %37 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %36, i32 0, i32 6
  %38 = call i32 @cw1200_set_uapsd_param(%struct.cw1200_common* %35, i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %68

42:                                               ; preds = %34
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %44 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %46 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @memcpy(i32 %47, i32 %52, i32 %53)
  %55 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %57 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %59 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %61 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %60, i32 0, i32 2
  store i32 10, i32* %61, align 4
  %62 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %63 = call i32 @cw1200_setup_mac(%struct.cw1200_common* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %42
  br label %68

67:                                               ; preds = %42
  br label %68

68:                                               ; preds = %67, %66, %41, %33
  %69 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %70 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %69, i32 0, i32 3
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @cw1200_pm_stay_awake(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WSM_EDCA_SET(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wsm_set_edca_params(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @cw1200_set_uapsd_param(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cw1200_setup_mac(%struct.cw1200_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
