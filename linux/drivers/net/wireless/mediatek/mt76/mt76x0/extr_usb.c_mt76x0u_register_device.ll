; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0u_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0u_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.ieee80211_hw* }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_hw = type { i32 }

@MT_TX_SG_MAX_SIZE = common dso_local global i32 0, align 4
@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x0u_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0u_register_device(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %4, align 8
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = call i32 @mt76u_alloc_queues(%struct.TYPE_4__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %18 = call i32 @mt76x0u_init_hardware(%struct.mt76x02_dev* %17, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %48

22:                                               ; preds = %16
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %24 = call i32 @mt76x0_register_device(%struct.mt76x02_dev* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %48

28:                                               ; preds = %22
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @MT_TX_SG_MAX_SIZE, align 4
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @set_bit(i32 %43, i32* %46)
  store i32 0, i32* %2, align 4
  br label %52

48:                                               ; preds = %27, %21, %15
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %50 = call i32 @mt76x0u_cleanup(%struct.mt76x02_dev* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @mt76u_alloc_queues(%struct.TYPE_4__*) #1

declare dso_local i32 @mt76x0u_init_hardware(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x0_register_device(%struct.mt76x02_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mt76x0u_cleanup(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
