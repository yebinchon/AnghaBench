; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_wiphy_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_wiphy_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }
%struct.wiphy = type { i32 }
%struct.qtnf_bus = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@QLINK_HW_CAPAB_DFS_OFFLOAD = common dso_local global i32 0, align 4
@qtn_cfg80211_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@QLINK_HW_CAPAB_PWR_MGMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wiphy* @qtnf_wiphy_allocate(%struct.qtnf_bus* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.qtnf_bus*, align 8
  %4 = alloca %struct.wiphy*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %3, align 8
  %5 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %6 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @QLINK_HW_CAPAB_DFS_OFFLOAD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @qtn_cfg80211_ops, i32 0, i32 1), align 8
  br label %13

13:                                               ; preds = %12, %1
  %14 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %15 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QLINK_HW_CAPAB_PWR_MGMT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @qtn_cfg80211_ops, i32 0, i32 0), align 8
  br label %22

22:                                               ; preds = %21, %13
  %23 = call %struct.wiphy* @wiphy_new(%struct.TYPE_5__* @qtn_cfg80211_ops, i32 4)
  store %struct.wiphy* %23, %struct.wiphy** %4, align 8
  %24 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %25 = icmp ne %struct.wiphy* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store %struct.wiphy* null, %struct.wiphy** %2, align 8
  br label %34

27:                                               ; preds = %22
  %28 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %29 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %30 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_wiphy_dev(%struct.wiphy* %28, i32 %31)
  %33 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  store %struct.wiphy* %33, %struct.wiphy** %2, align 8
  br label %34

34:                                               ; preds = %27, %26
  %35 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  ret %struct.wiphy* %35
}

declare dso_local %struct.wiphy* @wiphy_new(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @set_wiphy_dev(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
