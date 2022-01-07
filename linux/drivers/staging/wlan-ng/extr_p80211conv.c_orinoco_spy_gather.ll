; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_orinoco_spy_gather.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_orinoco_spy_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.p80211_rxmeta = type { i64, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlandevice*, i8*, %struct.p80211_rxmeta*)* @orinoco_spy_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orinoco_spy_gather(%struct.wlandevice* %0, i8* %1, %struct.p80211_rxmeta* %2) #0 {
  %4 = alloca %struct.wlandevice*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.p80211_rxmeta*, align 8
  %7 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.p80211_rxmeta* %2, %struct.p80211_rxmeta** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %80, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %11 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %8
  %15 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %16 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memcmp(i32 %21, i8* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %79, label %26

26:                                               ; preds = %14
  %27 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %28 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %31 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %29, i64* %36, align 8
  %37 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %38 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %41 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 %39, i64* %46, align 8
  %47 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %48 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %51 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %26
  %55 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %56 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.p80211_rxmeta*, %struct.p80211_rxmeta** %6, align 8
  %59 = getelementptr inbounds %struct.p80211_rxmeta, %struct.p80211_rxmeta* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  br label %63

62:                                               ; preds = %26
  br label %63

63:                                               ; preds = %62, %54
  %64 = phi i64 [ %61, %54 ], [ 0, %62 ]
  %65 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %66 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i64 %64, i64* %71, align 8
  %72 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %73 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i32 7, i32* %78, align 8
  br label %79

79:                                               ; preds = %63, %14
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %8

83:                                               ; preds = %8
  ret void
}

declare dso_local i32 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
