; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_net_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_net_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qtnf_vif = type { %struct.TYPE_4__, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i8* }
%struct.net_device = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_4__*, i32* }
%struct.wiphy = type { i32 }

@ether_setup = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@qtnf_netdev_ops = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@QTNF_DEF_WDOG_TIMEOUT = common dso_local global i32 0, align 4
@qtnf_ethtool_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_core_net_attach(%struct.qtnf_wmac* %0, %struct.qtnf_vif* %1, i8* %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtnf_wmac*, align 8
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.wiphy*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %6, align 8
  store %struct.qtnf_vif* %1, %struct.qtnf_vif** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  %14 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %15 = call %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac* %14)
  store %struct.wiphy* %15, %struct.wiphy** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %9, align 1
  %18 = load i32, i32* @ether_setup, align 4
  %19 = call %struct.net_device* @alloc_netdev_mqs(i32 8, i8* %16, i8 zeroext %17, i32 %18, i32 1, i32 1)
  store %struct.net_device* %19, %struct.net_device** %11, align 8
  %20 = load %struct.net_device*, %struct.net_device** %11, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** @NL80211_IFTYPE_UNSPECIFIED, align 8
  %24 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %25 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %96

29:                                               ; preds = %4
  %30 = load %struct.net_device*, %struct.net_device** %11, align 8
  %31 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %32 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %31, i32 0, i32 2
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %11, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 7
  store i32* @qtnf_netdev_ops, i32** %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %11, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %11, align 8
  %38 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %39 = call i32 @wiphy_net(%struct.wiphy* %38)
  %40 = call i32 @dev_net_set(%struct.net_device* %37, i32 %39)
  %41 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %42 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %41, i32 0, i32 0
  %43 = load %struct.net_device*, %struct.net_device** %11, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 6
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %11, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %49 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ether_addr_copy(i32 %47, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %11, align 8
  %53 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %54 = call i32 @wiphy_dev(%struct.wiphy* %53)
  %55 = call i32 @SET_NETDEV_DEV(%struct.net_device* %52, i32 %54)
  %56 = load i32, i32* @IFF_BROADCAST, align 4
  %57 = load i32, i32* @IFF_MULTICAST, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.net_device*, %struct.net_device** %11, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @QTNF_DEF_WDOG_TIMEOUT, align 4
  %64 = load %struct.net_device*, %struct.net_device** %11, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %11, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 2
  store i32 100, i32* %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %11, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 3
  store i32* @qtnf_ethtool_ops, i32** %69, align 8
  %70 = load %struct.net_device*, %struct.net_device** %11, align 8
  %71 = call i8* @netdev_priv(%struct.net_device* %70)
  store i8* %71, i8** %12, align 8
  %72 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %73 = bitcast %struct.qtnf_vif* %72 to i8*
  %74 = load i8*, i8** %12, align 8
  %75 = bitcast i8* %74 to i8**
  store i8* %73, i8** %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %11, align 8
  %77 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %78 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @SET_NETDEV_DEV(%struct.net_device* %76, i32 %81)
  %83 = load %struct.net_device*, %struct.net_device** %11, align 8
  %84 = call i32 @register_netdevice(%struct.net_device* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %29
  %88 = load %struct.net_device*, %struct.net_device** %11, align 8
  %89 = call i32 @free_netdev(%struct.net_device* %88)
  %90 = load i8*, i8** @NL80211_IFTYPE_UNSPECIFIED, align 8
  %91 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %92 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  br label %94

94:                                               ; preds = %87, %29
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %22
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac*) #1

declare dso_local %struct.net_device* @alloc_netdev_mqs(i32, i8*, i8 zeroext, i32, i32, i32) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_net(%struct.wiphy*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_dev(%struct.wiphy*) #1

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
