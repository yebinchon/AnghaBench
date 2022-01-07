; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_UpdateReceivedRateHistogramStatistics8190.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_UpdateReceivedRateHistogramStatistics8190.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i64, i64, i64 }
%struct.r8192_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ieee80211_rx_stats*)* @UpdateReceivedRateHistogramStatistics8190 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateReceivedRateHistogramStatistics8190(%struct.net_device* %0, %struct.ieee80211_rx_stats* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee80211_rx_stats*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i64 @ieee80211_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to %struct.r8192_priv*
  store %struct.r8192_priv* %11, %struct.r8192_priv** %5, align 8
  store i64 1, i64* %6, align 8
  %12 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i64 2, i64* %6, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i64 3, i64* %6, align 8
  br label %23

23:                                               ; preds = %22, %17
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i64 1, i64* %8, align 8
  br label %31

30:                                               ; preds = %24
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %63 [
    i32 152, label %35
    i32 150, label %36
    i32 146, label %37
    i32 155, label %38
    i32 145, label %39
    i32 144, label %40
    i32 154, label %41
    i32 153, label %42
    i32 151, label %43
    i32 149, label %44
    i32 148, label %45
    i32 147, label %46
    i32 143, label %47
    i32 142, label %48
    i32 135, label %49
    i32 134, label %50
    i32 133, label %51
    i32 132, label %52
    i32 131, label %53
    i32 130, label %54
    i32 129, label %55
    i32 128, label %56
    i32 141, label %57
    i32 140, label %58
    i32 139, label %59
    i32 138, label %60
    i32 137, label %61
    i32 136, label %62
  ]

35:                                               ; preds = %31
  store i64 0, i64* %7, align 8
  br label %64

36:                                               ; preds = %31
  store i64 1, i64* %7, align 8
  br label %64

37:                                               ; preds = %31
  store i64 2, i64* %7, align 8
  br label %64

38:                                               ; preds = %31
  store i64 3, i64* %7, align 8
  br label %64

39:                                               ; preds = %31
  store i64 4, i64* %7, align 8
  br label %64

40:                                               ; preds = %31
  store i64 5, i64* %7, align 8
  br label %64

41:                                               ; preds = %31
  store i64 6, i64* %7, align 8
  br label %64

42:                                               ; preds = %31
  store i64 7, i64* %7, align 8
  br label %64

43:                                               ; preds = %31
  store i64 8, i64* %7, align 8
  br label %64

44:                                               ; preds = %31
  store i64 9, i64* %7, align 8
  br label %64

45:                                               ; preds = %31
  store i64 10, i64* %7, align 8
  br label %64

46:                                               ; preds = %31
  store i64 11, i64* %7, align 8
  br label %64

47:                                               ; preds = %31
  store i64 12, i64* %7, align 8
  br label %64

48:                                               ; preds = %31
  store i64 13, i64* %7, align 8
  br label %64

49:                                               ; preds = %31
  store i64 14, i64* %7, align 8
  br label %64

50:                                               ; preds = %31
  store i64 15, i64* %7, align 8
  br label %64

51:                                               ; preds = %31
  store i64 16, i64* %7, align 8
  br label %64

52:                                               ; preds = %31
  store i64 17, i64* %7, align 8
  br label %64

53:                                               ; preds = %31
  store i64 18, i64* %7, align 8
  br label %64

54:                                               ; preds = %31
  store i64 19, i64* %7, align 8
  br label %64

55:                                               ; preds = %31
  store i64 20, i64* %7, align 8
  br label %64

56:                                               ; preds = %31
  store i64 21, i64* %7, align 8
  br label %64

57:                                               ; preds = %31
  store i64 22, i64* %7, align 8
  br label %64

58:                                               ; preds = %31
  store i64 23, i64* %7, align 8
  br label %64

59:                                               ; preds = %31
  store i64 24, i64* %7, align 8
  br label %64

60:                                               ; preds = %31
  store i64 25, i64* %7, align 8
  br label %64

61:                                               ; preds = %31
  store i64 26, i64* %7, align 8
  br label %64

62:                                               ; preds = %31
  store i64 27, i64* %7, align 8
  br label %64

63:                                               ; preds = %31
  store i64 28, i64* %7, align 8
  br label %64

64:                                               ; preds = %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i32*, i32** %68, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %87 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
