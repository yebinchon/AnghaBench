; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i64, i32, i32, i32, %struct.data_queue* }
%struct.data_queue = type { i32, %struct.queue_entry* }
%struct.queue_entry = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }
%struct.rt2x00_intf = type { %struct.queue_entry*, i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@DEVICE_STATE_STARTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENTRY_BCN_ASSIGNED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00mac_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.rt2x00_intf*, align 8
  %8 = alloca %struct.data_queue*, align 8
  %9 = alloca %struct.queue_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %12, align 8
  store %struct.rt2x00_dev* %13, %struct.rt2x00_dev** %6, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = call %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif* %14)
  store %struct.rt2x00_intf* %15, %struct.rt2x00_intf** %7, align 8
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 4
  %18 = load %struct.data_queue*, %struct.data_queue** %17, align 8
  store %struct.data_queue* %18, %struct.data_queue** %8, align 8
  store %struct.queue_entry* null, %struct.queue_entry** %9, align 8
  %19 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %21 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %20, i32 0, i32 3
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @DEVICE_STATE_STARTED, align 4
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 3
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %2
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %103

33:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.data_queue*, %struct.data_queue** %8, align 8
  %37 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.data_queue*, %struct.data_queue** %8, align 8
  %42 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %41, i32 0, i32 1
  %43 = load %struct.queue_entry*, %struct.queue_entry** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %43, i64 %45
  store %struct.queue_entry* %46, %struct.queue_entry** %9, align 8
  %47 = load i32, i32* @ENTRY_BCN_ASSIGNED, align 4
  %48 = load %struct.queue_entry*, %struct.queue_entry** %9, align 8
  %49 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %48, i32 0, i32 0
  %50 = call i32 @test_and_set_bit(i32 %47, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  br label %57

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %34

57:                                               ; preds = %52, %34
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.data_queue*, %struct.data_queue** %8, align 8
  %60 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @ENOBUFS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %103

69:                                               ; preds = %57
  %70 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %77 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %85

80:                                               ; preds = %69
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %82 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %7, align 8
  %87 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %86, i32 0, i32 1
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.queue_entry*, %struct.queue_entry** %9, align 8
  %90 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %7, align 8
  %91 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %90, i32 0, i32 0
  store %struct.queue_entry* %89, %struct.queue_entry** %91, align 8
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %93 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %7, align 8
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @rt2x00lib_config_intf(%struct.rt2x00_dev* %92, %struct.rt2x00_intf* %93, i32 %96, i32 %99, i32* null)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %102 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %85, %66, %30
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rt2x00lib_config_intf(%struct.rt2x00_dev*, %struct.rt2x00_intf*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
