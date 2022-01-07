; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_carrier_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_carrier_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@ETH_DATA_LEN = common dso_local global i64 0, align 8
@VIF_STATUS_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenvif_carrier_on(%struct.xenvif* %0) #0 {
  %2 = alloca %struct.xenvif*, align 8
  store %struct.xenvif* %0, %struct.xenvif** %2, align 8
  %3 = call i32 (...) @rtnl_lock()
  %4 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %5 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %10 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ETH_DATA_LEN, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %18 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* @ETH_DATA_LEN, align 8
  %21 = call i32 @dev_set_mtu(%struct.TYPE_4__* %19, i64 %20)
  br label %22

22:                                               ; preds = %16, %8, %1
  %23 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %24 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @netdev_update_features(%struct.TYPE_4__* %25)
  %27 = load i32, i32* @VIF_STATUS_CONNECTED, align 4
  %28 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %29 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %28, i32 0, i32 1
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %32 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i64 @netif_running(%struct.TYPE_4__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %38 = call i32 @xenvif_up(%struct.xenvif* %37)
  br label %39

39:                                               ; preds = %36, %22
  %40 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_set_mtu(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @netdev_update_features(%struct.TYPE_4__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @netif_running(%struct.TYPE_4__*) #1

declare dso_local i32 @xenvif_up(%struct.xenvif*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
