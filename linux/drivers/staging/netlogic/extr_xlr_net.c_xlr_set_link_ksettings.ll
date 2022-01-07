; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { i32 }
%struct.xlr_net_priv = type { i32 }
%struct.phy_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @xlr_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.xlr_net_priv*, align 8
  %7 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.xlr_net_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.xlr_net_priv* %9, %struct.xlr_net_priv** %6, align 8
  %10 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %6, align 8
  %11 = call %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv* %10)
  store %struct.phy_device* %11, %struct.phy_device** %7, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %13 = icmp ne %struct.phy_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %20 = call i32 @phy_ethtool_ksettings_set(%struct.phy_device* %18, %struct.ethtool_link_ksettings* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.xlr_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv*) #1

declare dso_local i32 @phy_ethtool_ksettings_set(%struct.phy_device*, %struct.ethtool_link_ksettings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
