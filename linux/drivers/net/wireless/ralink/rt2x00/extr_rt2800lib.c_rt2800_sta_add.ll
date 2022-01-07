; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_sta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { %struct.ieee80211_sta**, i32, i32* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.rt2x00_sta = type { i32 }

@STA_IDS_SIZE = common dso_local global i32 0, align 4
@WCID_START = common dso_local global i32 0, align 4
@WCID_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.rt2x00_dev*, align 8
  %9 = alloca %struct.rt2800_drv_data*, align 8
  %10 = alloca %struct.rt2x00_sta*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %13, align 8
  store %struct.rt2x00_dev* %14, %struct.rt2x00_dev** %8, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 0
  %17 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %16, align 8
  store %struct.rt2800_drv_data* %17, %struct.rt2800_drv_data** %9, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %19 = call %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta* %18)
  store %struct.rt2x00_sta* %19, %struct.rt2x00_sta** %10, align 8
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %27 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %28, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %39 = call i32 @rt2800_set_max_psdu_len(%struct.rt2x00_dev* %38)
  br label %40

40:                                               ; preds = %25, %3
  %41 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %42 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @STA_IDS_SIZE, align 4
  %45 = call i32 @find_first_zero_bit(i32 %43, i32 %44)
  %46 = load i32, i32* @WCID_START, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.rt2x00_sta*, %struct.rt2x00_sta** %10, align 8
  %50 = getelementptr inbounds %struct.rt2x00_sta, %struct.rt2x00_sta* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @WCID_END, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %87

55:                                               ; preds = %40
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @WCID_START, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %60 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @__set_bit(i32 %58, i32 %61)
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %64 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %9, align 8
  %65 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %64, i32 0, i32 0
  %66 = load %struct.ieee80211_sta**, %struct.ieee80211_sta*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @WCID_START, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ieee80211_sta*, %struct.ieee80211_sta** %66, i64 %70
  store %struct.ieee80211_sta* %63, %struct.ieee80211_sta** %71, align 8
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @rt2800_delete_wcid_attr(%struct.rt2x00_dev* %72, i32 %73)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %76 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @rt2800_config_wcid(%struct.rt2x00_dev* %75, i32 %78, i32 %79)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %84 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %85 = call i32 @rt2x00lib_get_bssidx(%struct.rt2x00_dev* %83, %struct.ieee80211_vif* %84)
  %86 = call i32 @rt2800_config_wcid_attr_bssidx(%struct.rt2x00_dev* %81, i32 %82, i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %55, %54
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta*) #1

declare dso_local i32 @rt2800_set_max_psdu_len(%struct.rt2x00_dev*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @rt2800_delete_wcid_attr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_config_wcid(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_config_wcid_attr_bssidx(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00lib_get_bssidx(%struct.rt2x00_dev*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
