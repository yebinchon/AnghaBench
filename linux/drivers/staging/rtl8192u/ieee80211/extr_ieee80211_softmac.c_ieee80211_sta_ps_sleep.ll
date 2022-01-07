; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_ps_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_ps_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i64, i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i64*, i32 }

@IEEE80211_DTIM_VALID = common dso_local global i32 0, align 4
@IEEE80211_DTIM_INVALID = common dso_local global i32 0, align 4
@IEEE80211_DTIM_UCAST = common dso_local global i32 0, align 4
@IEEE80211_DTIM_MBCAST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_SINGLE_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.ieee80211_device*, i64*, i64*)* @ieee80211_sta_ps_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @ieee80211_sta_ps_sleep(%struct.ieee80211_device* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @IEEE80211_DTIM_VALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i16 0, i16* %4, align 2
  br label %130

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @IEEE80211_DTIM_INVALID, align 4
  %25 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @IEEE80211_DTIM_UCAST, align 4
  %30 = load i32, i32* @IEEE80211_DTIM_MBCAST, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %31, %34
  %36 = and i32 %28, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  store i16 2, i16* %4, align 2
  br label %130

39:                                               ; preds = %19
  %40 = load i32, i32* @jiffies, align 4
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @dev_trans_start(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @msecs_to_jiffies(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = call i32 @time_after(i32 %40, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store i16 0, i16* %4, align 2
  br label %130

51:                                               ; preds = %39
  %52 = load i32, i32* @jiffies, align 4
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @msecs_to_jiffies(i32 %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @time_after(i32 %52, i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  store i16 0, i16* %4, align 2
  br label %130

62:                                               ; preds = %51
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE_SOFTMAC_SINGLE_QUEUE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i16 0, i16* %4, align 2
  br label %130

78:                                               ; preds = %69, %62
  %79 = load i64*, i64** %7, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %89 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %91, %95
  %97 = mul nsw i32 %96, 1000
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %87, %98
  %100 = load i64*, i64** %7, align 8
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %81, %78
  %102 = load i64*, i64** %6, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %104, label %129

104:                                              ; preds = %101
  %105 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %106 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %6, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i64*, i64** %7, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %114, label %128

114:                                              ; preds = %104
  %115 = load i64*, i64** %7, align 8
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %118 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %116, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %114
  %125 = load i64*, i64** %6, align 8
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %124, %114, %104
  br label %129

129:                                              ; preds = %128, %101
  store i16 1, i16* %4, align 2
  br label %130

130:                                              ; preds = %129, %77, %61, %50, %38, %18
  %131 = load i16, i16* %4, align 2
  ret i16 %131
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @dev_trans_start(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
