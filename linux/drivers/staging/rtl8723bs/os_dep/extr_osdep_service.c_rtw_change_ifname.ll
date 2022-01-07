; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_osdep_service.c_rtw_change_ifname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_osdep_service.c_rtw_change_ifname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.rereg_nd_name_data, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.rereg_nd_name_data = type { %struct.net_device* }
%struct.net_device = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@_module_hci_intfs_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"register_netdev() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_change_ifname(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.rereg_nd_name_data*, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = icmp ne %struct.adapter* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %82

13:                                               ; preds = %2
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  store %struct.rereg_nd_name_data* %18, %struct.rereg_nd_name_data** %8, align 8
  %19 = load %struct.rereg_nd_name_data*, %struct.rereg_nd_name_data** %8, align 8
  %20 = getelementptr inbounds %struct.rereg_nd_name_data, %struct.rereg_nd_name_data* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.rereg_nd_name_data*, %struct.rereg_nd_name_data** %8, align 8
  %25 = getelementptr inbounds %struct.rereg_nd_name_data, %struct.rereg_nd_name_data* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  %27 = call i32 @free_netdev(%struct.net_device* %26)
  %28 = load %struct.rereg_nd_name_data*, %struct.rereg_nd_name_data** %8, align 8
  %29 = getelementptr inbounds %struct.rereg_nd_name_data, %struct.rereg_nd_name_data* %28, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %29, align 8
  br label %30

30:                                               ; preds = %23, %13
  %31 = call i32 (...) @rtnl_is_locked()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = call i32 @unregister_netdev(%struct.net_device* %34)
  br label %39

36:                                               ; preds = %30
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @unregister_netdevice(%struct.net_device* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = load %struct.rereg_nd_name_data*, %struct.rereg_nd_name_data** %8, align 8
  %42 = getelementptr inbounds %struct.rereg_nd_name_data, %struct.rereg_nd_name_data* %41, i32 0, i32 0
  store %struct.net_device* %40, %struct.net_device** %42, align 8
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = call %struct.net_device* @rtw_init_netdev(%struct.adapter* %43)
  store %struct.net_device* %44, %struct.net_device** %6, align 8
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 -1, i32* %9, align 4
  br label %82

48:                                               ; preds = %39
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load %struct.adapter*, %struct.adapter** %4, align 8
  %51 = call i32 @adapter_to_dvobj(%struct.adapter* %50)
  %52 = call i32 @dvobj_to_dev(i32 %51)
  %53 = call i32 @SET_NETDEV_DEV(%struct.net_device* %49, i32 %52)
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @rtw_init_netdev_name(%struct.net_device* %54, i8* %55)
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.adapter*, %struct.adapter** %4, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32 %59, i32 %63, i32 %64)
  %66 = call i32 (...) @rtnl_is_locked()
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %48
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = call i32 @register_netdev(%struct.net_device* %69)
  store i32 %70, i32* %9, align 4
  br label %74

71:                                               ; preds = %48
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = call i32 @register_netdevice(%struct.net_device* %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @_module_hci_intfs_c_, align 4
  %79 = load i32, i32* @_drv_err_, align 4
  %80 = call i32 @RT_TRACE(i32 %78, i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %82

81:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %83

82:                                               ; preds = %77, %47, %12
  store i32 -1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @rtnl_is_locked(...) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtw_init_netdev(%struct.adapter*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @dvobj_to_dev(i32) #1

declare dso_local i32 @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @rtw_init_netdev_name(%struct.net_device*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
