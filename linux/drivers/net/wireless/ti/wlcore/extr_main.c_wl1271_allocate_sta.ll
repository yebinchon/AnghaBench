; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_allocate_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_allocate_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wl12xx_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.wl1271_station = type { i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"could not allocate HLID - too much stations\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not allocate HLID - too many links\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*)* @wl1271_allocate_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_allocate_sta(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wl1271_station*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %10 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 @wl1271_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %75

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.wl1271_station*
  store %struct.wl1271_station* %25, %struct.wl1271_station** %8, align 8
  %26 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %28 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %29 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %28, i32 0, i32 0
  %30 = call i32 @wl12xx_allocate_link(%struct.wl1271* %26, %struct.wl12xx_vif* %27, i64* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = call i32 @wl1271_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %75

37:                                               ; preds = %21
  %38 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %39 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %45 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %40, i32* %48, align 4
  %49 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %50 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %53 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_bit(i64 %51, i32 %55)
  %57 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.wl1271_station*, %struct.wl1271_station** %8, align 8
  %61 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @memcpy(i32 %65, i32 %68, i32 %69)
  %71 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %37, %33, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @wl12xx_allocate_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
