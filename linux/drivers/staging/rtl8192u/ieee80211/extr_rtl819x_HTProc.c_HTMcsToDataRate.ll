; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_HTProc.c_HTMcsToDataRate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_HTProc.c_HTMcsToDataRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@MCS_DATA_RATE = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, i64)* @HTMcsToDataRate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMcsToDataRate(%struct.ieee80211_device* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i32 [ %28, %22 ], [ %35, %29 ]
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load i32***, i32**** @MCS_DATA_RATE, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32**, i32*** %39, i64 %40
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = and i64 %46, 127
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
