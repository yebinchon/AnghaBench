; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wl1271 = type { i32, i32* }
%struct.ieee80211_hw = type { %struct.wl1271* }

@WL18XX_AGGR_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"can't allocate hw\00", align 1
@wl18xx_ops = common dso_local global i32 0, align 4
@wl18xx_ptable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wl18xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @WL18XX_AGGR_BUFFER_SIZE, align 4
  %8 = call %struct.ieee80211_hw* @wlcore_alloc_hw(i32 4, i32 %7, i32 4)
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = call i64 @IS_ERR(%struct.ieee80211_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @wl1271_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call i32 @PTR_ERR(%struct.ieee80211_hw* %14)
  store i32 %15, i32* %6, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.wl1271*, %struct.wl1271** %18, align 8
  store %struct.wl1271* %19, %struct.wl1271** %4, align 8
  %20 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 1
  store i32* @wl18xx_ops, i32** %21, align 8
  %22 = load i32, i32* @wl18xx_ptable, align 4
  %23 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i32 @wlcore_probe(%struct.wl1271* %25, %struct.platform_device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %30
  %34 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %35 = call i32 @wlcore_free_hw(%struct.wl1271* %34)
  br label %36

36:                                               ; preds = %33, %12
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ieee80211_hw* @wlcore_alloc_hw(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_hw*) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee80211_hw*) #1

declare dso_local i32 @wlcore_probe(%struct.wl1271*, %struct.platform_device*) #1

declare dso_local i32 @wlcore_free_hw(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
