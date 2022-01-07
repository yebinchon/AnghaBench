; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_update_phy_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_update_phy_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ks_wlan_private = type { i64, i32, i32, %struct.TYPE_4__, %struct.iw_statistics }
%struct.TYPE_4__ = type { i32 }
%struct.iw_statistics = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"in_interrupt = %ld\0A\00", align 1
@DEVICE_STATE_READY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@update_phyinfo = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SME_PHY_INFO_REQUEST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"wait time out!!\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@update_phyinfo_timer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_wlan_private*)* @ks_wlan_update_phy_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_wlan_update_phy_information(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca %struct.iw_statistics*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  %5 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %6 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %5, i32 0, i32 4
  store %struct.iw_statistics* %6, %struct.iw_statistics** %4, align 8
  %7 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %8 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (...) @in_interrupt()
  %11 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %13 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DEVICE_STATE_READY, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = call i64 @atomic_read(i32* @update_phyinfo)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %20
  %27 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %28 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iw_statistics*, %struct.iw_statistics** %4, align 8
  %32 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %34 = load i32, i32* @SME_PHY_INFO_REQUEST, align 4
  %35 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %33, i32 %34)
  %36 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %37 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %36, i32 0, i32 2
  %38 = load i32, i32* @HZ, align 4
  %39 = sdiv i32 %38, 2
  %40 = call i32 @wait_for_completion_interruptible_timeout(i32* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %26
  %43 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %44 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %26
  %48 = call i32 @atomic_inc(i32* @update_phyinfo)
  %49 = load i64, i64* @jiffies, align 8
  %50 = load i32, i32* @HZ, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @update_phyinfo_timer, i32 0, i32 0), align 8
  %53 = call i32 @add_timer(%struct.TYPE_5__* @update_phyinfo_timer)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %23, %17
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
