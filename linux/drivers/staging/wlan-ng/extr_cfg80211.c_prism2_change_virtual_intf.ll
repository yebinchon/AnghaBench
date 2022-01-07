; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_change_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_change_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { %struct.TYPE_2__*, %struct.wlandevice* }
%struct.TYPE_2__ = type { i32 }
%struct.wlandevice = type { i32 }
%struct.vif_params = type { i32 }

@WLAN_MACMODE_IBSS_STA = common dso_local global i32 0, align 4
@WLAN_MACMODE_ESS_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Operation mode: %d not support\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DIDMIB_P2_STATIC_CNFPORTTYPE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, %struct.vif_params*)* @prism2_change_virtual_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_change_virtual_intf(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca %struct.wlandevice*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load %struct.wlandevice*, %struct.wlandevice** %15, align 8
  store %struct.wlandevice* %16, %struct.wlandevice** %10, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %40 [
    i32 129, label %18
    i32 128, label %29
  ]

18:                                               ; preds = %4
  %19 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %20 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WLAN_MACMODE_IBSS_STA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %62

25:                                               ; preds = %18
  %26 = load i32, i32* @WLAN_MACMODE_IBSS_STA, align 4
  %27 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %28 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %11, align 4
  br label %46

29:                                               ; preds = %4
  %30 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %31 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WLAN_MACMODE_ESS_STA, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %62

36:                                               ; preds = %29
  %37 = load i32, i32* @WLAN_MACMODE_ESS_STA, align 4
  %38 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %39 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 1, i32* %11, align 4
  br label %46

40:                                               ; preds = %4
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @netdev_warn(%struct.net_device* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %64

46:                                               ; preds = %36, %25
  %47 = load %struct.wlandevice*, %struct.wlandevice** %10, align 8
  %48 = load i32, i32* @DIDMIB_P2_STATIC_CNFPORTTYPE, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %47, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %35, %24
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %40
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @prism2_domibset_uint32(%struct.wlandevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
