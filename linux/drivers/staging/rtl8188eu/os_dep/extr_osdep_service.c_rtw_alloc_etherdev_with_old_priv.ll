; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_osdep_service.c_rtw_alloc_etherdev_with_old_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_osdep_service.c_rtw_alloc_etherdev_with_old_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtw_netdev_priv_indicator = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @rtw_alloc_etherdev_with_old_priv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtw_netdev_priv_indicator*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %struct.net_device* @alloc_etherdev_mq(i32 8, i32 4)
  store %struct.net_device* %5, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = icmp ne %struct.net_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.rtw_netdev_priv_indicator* @netdev_priv(%struct.net_device* %10)
  store %struct.rtw_netdev_priv_indicator* %11, %struct.rtw_netdev_priv_indicator** %4, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = load %struct.rtw_netdev_priv_indicator*, %struct.rtw_netdev_priv_indicator** %4, align 8
  %14 = getelementptr inbounds %struct.rtw_netdev_priv_indicator, %struct.rtw_netdev_priv_indicator* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  br label %15

15:                                               ; preds = %9, %8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %16
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local %struct.rtw_netdev_priv_indicator* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
