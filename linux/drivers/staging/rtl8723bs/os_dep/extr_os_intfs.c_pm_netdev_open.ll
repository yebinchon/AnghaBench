; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_pm_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_pm_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32 }
%struct.TYPE_2__ = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @pm_netdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_netdev_open(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i64 @rtw_netdev_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.adapter*
  store %struct.adapter* %9, %struct.adapter** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 1, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.adapter*, %struct.adapter** %6, align 8
  %14 = call %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @_netdev_open(%struct.net_device* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.adapter*, %struct.adapter** %6, align 8
  %22 = call %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %25

25:                                               ; preds = %18, %12
  br label %33

26:                                               ; preds = %2
  %27 = load i64, i64* @_SUCCESS, align 8
  %28 = load %struct.adapter*, %struct.adapter** %6, align 8
  %29 = call i64 @ips_netdrv_open(%struct.adapter* %28)
  %30 = icmp eq i64 %27, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 -1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %25
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @_netdev_open(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ips_netdrv_open(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
