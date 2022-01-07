; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_tx.c_ieee80211_query_BandwidthMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_tx.c_ieee80211_query_BandwidthMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.cb_desc = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*, %struct.cb_desc*)* @ieee80211_query_BandwidthMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_query_BandwidthMode(%struct.ieee80211_device* %0, %struct.cb_desc* %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.cb_desc*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.cb_desc* %1, %struct.cb_desc** %4, align 8
  %6 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.cb_desc*, %struct.cb_desc** %4, align 8
  %10 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %59

21:                                               ; preds = %15
  %22 = load %struct.cb_desc*, %struct.cb_desc** %4, align 8
  %23 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.cb_desc*, %struct.cb_desc** %4, align 8
  %28 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21
  br label %59

32:                                               ; preds = %26
  %33 = load %struct.cb_desc*, %struct.cb_desc** %4, align 8
  %34 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %59

39:                                               ; preds = %32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load %struct.cb_desc*, %struct.cb_desc** %4, align 8
  %57 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %49, %44, %39
  br label %59

59:                                               ; preds = %58, %38, %31, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
