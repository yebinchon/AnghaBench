; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xlr_net_priv = type { i32 }
%struct.phy_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xlr_net_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_net_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xlr_net_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.xlr_net_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.xlr_net_priv* %6, %struct.xlr_net_priv** %3, align 8
  %7 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %8 = call %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv* %7)
  store %struct.phy_device* %8, %struct.phy_device** %4, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %10 = call i32 @phy_stop(%struct.phy_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %11)
  ret i32 0
}

declare dso_local %struct.xlr_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv*) #1

declare dso_local i32 @phy_stop(%struct.phy_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
