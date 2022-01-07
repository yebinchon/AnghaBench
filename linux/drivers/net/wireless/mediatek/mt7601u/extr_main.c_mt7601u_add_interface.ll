; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { i32*, i32 }
%struct.ieee80211_vif = type { i32, i64 }
%struct.mt76_vif = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @mt7601u_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.mt7601u_dev*, align 8
  %7 = alloca %struct.mt76_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %11, align 8
  store %struct.mt7601u_dev* %12, %struct.mt7601u_dev** %6, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.mt76_vif*
  store %struct.mt76_vif* %16, %struct.mt76_vif** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @GROUP_WCID(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.mt76_vif*, %struct.mt76_vif** %7, align 8
  %21 = getelementptr inbounds %struct.mt76_vif, %struct.mt76_vif* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %23 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ether_addr_equal(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mt7601u_set_macaddr(%struct.mt7601u_dev* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %38 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @BITS_PER_LONG, align 4
  %42 = udiv i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @BITS_PER_LONG, align 4
  %48 = urem i32 %46, %47
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %45, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %77

55:                                               ; preds = %36
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @BITS_PER_LONG, align 4
  %58 = urem i32 %56, %57
  %59 = call i32 @BIT(i32 %58)
  %60 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %61 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @BITS_PER_LONG, align 4
  %65 = udiv i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %59
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.mt76_vif*, %struct.mt76_vif** %7, align 8
  %72 = getelementptr inbounds %struct.mt76_vif, %struct.mt76_vif* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.mt76_vif*, %struct.mt76_vif** %7, align 8
  %75 = getelementptr inbounds %struct.mt76_vif, %struct.mt76_vif* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 -1, i32* %76, align 4
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %55, %52
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @GROUP_WCID(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @mt7601u_set_macaddr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
