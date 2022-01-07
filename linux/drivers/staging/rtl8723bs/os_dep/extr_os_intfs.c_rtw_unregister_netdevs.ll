; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_unregister_netdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_unregister_netdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvobj_priv = type { %struct.adapter* }
%struct.adapter = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@DRIVER_DISAPPEAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_unregister_netdevs(%struct.dvobj_priv* %0) #0 {
  %2 = alloca %struct.dvobj_priv*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.dvobj_priv* %0, %struct.dvobj_priv** %2, align 8
  store %struct.adapter* null, %struct.adapter** %3, align 8
  store %struct.net_device* null, %struct.net_device** %4, align 8
  %5 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  %6 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %5, i32 0, i32 0
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = icmp eq %struct.adapter* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DRIVER_DISAPPEAR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @unregister_netdev(%struct.net_device* %24)
  br label %26

26:                                               ; preds = %23, %20, %11
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rtw_wdev_unregister(i32 %29)
  br label %31

31:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @rtw_wdev_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
