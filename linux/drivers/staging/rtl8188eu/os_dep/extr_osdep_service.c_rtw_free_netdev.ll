; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_osdep_service.c_rtw_free_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_osdep_service.c_rtw_free_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtw_netdev_priv_indicator = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_free_netdev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtw_netdev_priv_indicator*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = icmp ne %struct.net_device* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %22

7:                                                ; preds = %1
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.rtw_netdev_priv_indicator* @netdev_priv(%struct.net_device* %8)
  store %struct.rtw_netdev_priv_indicator* %9, %struct.rtw_netdev_priv_indicator** %3, align 8
  %10 = load %struct.rtw_netdev_priv_indicator*, %struct.rtw_netdev_priv_indicator** %3, align 8
  %11 = getelementptr inbounds %struct.rtw_netdev_priv_indicator, %struct.rtw_netdev_priv_indicator* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7
  %16 = load %struct.rtw_netdev_priv_indicator*, %struct.rtw_netdev_priv_indicator** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_netdev_priv_indicator, %struct.rtw_netdev_priv_indicator* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vfree(i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @free_netdev(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %15, %14, %6
  ret void
}

declare dso_local %struct.rtw_netdev_priv_indicator* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
