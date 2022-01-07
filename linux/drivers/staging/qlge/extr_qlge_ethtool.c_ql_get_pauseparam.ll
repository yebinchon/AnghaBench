; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32 }
%struct.ql_adapter = type { i32 }

@CFG_PAUSE_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @ql_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.ql_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ql_adapter* %7, %struct.ql_adapter** %5, align 8
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %9 = call i32 @ql_mb_get_port_cfg(%struct.ql_adapter* %8)
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CFG_PAUSE_STD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ql_mb_get_port_cfg(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
