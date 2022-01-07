; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i32, i64 }
%struct.zd_mac = type { i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"changes: %x\0A\00", align 1
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @zd_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zd_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zd_mac*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %14)
  store %struct.zd_mac* %15, %struct.zd_mac** %9, align 8
  %16 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %17 = call i32 @zd_mac_dev(%struct.zd_mac* %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @dev_dbg_f(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %21 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %4
  %26 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %27 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %33 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %31, %25, %4
  store i32 1, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %45 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %43, %struct.ieee80211_vif* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %11, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %50 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %49, i32 0, i32 4
  %51 = call i32 @zd_chip_disable_hwint(i32* %50)
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = call i32 @zd_mac_config_beacon(%struct.ieee80211_hw* %52, %struct.sk_buff* %53, i32 0)
  %55 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %56 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %55, i32 0, i32 4
  %57 = call i32 @zd_chip_enable_hwint(i32* %56)
  br label %58

58:                                               ; preds = %48, %42
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %59
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %65 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %78 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %77, i32 0, i32 2
  %79 = call i32 @spin_lock_irq(i32* %78)
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %82 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %86 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @jiffies, align 4
  %89 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %90 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %93 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock_irq(i32* %93)
  %95 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %96 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %95, i32 0, i32 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %100 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @zd_set_beacon_interval(i32* %96, i32 %97, i32 %98, i64 %101)
  br label %103

103:                                              ; preds = %76, %59
  br label %109

104:                                              ; preds = %31
  %105 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %106 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @is_valid_ether_addr(i32 %107)
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %104, %103
  %110 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %111 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %110, i32 0, i32 2
  %112 = call i32 @spin_lock_irq(i32* %111)
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %115 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %117 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %116, i32 0, i32 2
  %118 = call i32 @spin_unlock_irq(i32* %117)
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %109
  %124 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %125 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %124, i32 0, i32 2
  %126 = call i32 @spin_lock_irq(i32* %125)
  %127 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %128 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %131 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %133 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %132, i32 0, i32 2
  %134 = call i32 @spin_unlock_irq(i32* %133)
  %135 = load %struct.zd_mac*, %struct.zd_mac** %9, align 8
  %136 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @set_rts_cts(%struct.zd_mac* %135, i32 %138)
  br label %140

140:                                              ; preds = %123, %109
  ret void
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_mac_dev(%struct.zd_mac*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @zd_chip_disable_hwint(i32*) #1

declare dso_local i32 @zd_mac_config_beacon(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i32 @zd_chip_enable_hwint(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @zd_set_beacon_interval(i32*, i32, i32, i64) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @set_rts_cts(%struct.zd_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
