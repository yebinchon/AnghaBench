; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_init_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_init_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.iw_handler_def*, i32* }
%struct.iw_handler_def = type { i32 }
%struct.adapter = type { %struct.net_device* }

@_module_os_intfs_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"+init_net_dev\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"pnetdev = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"register rtw_netdev_ops to netdev_ops\0A\00", align 1
@rtw_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@rtw_handlers_def = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @rtw_init_netdev(%struct.adapter* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %6 = load i32, i32* @_module_os_intfs_c_, align 4
  %7 = load i32, i32* @_drv_info_, align 4
  %8 = call i32 @RT_TRACE(i32 %6, i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = icmp ne %struct.adapter* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = bitcast %struct.adapter* %12 to i8*
  %14 = call %struct.net_device* @rtw_alloc_etherdev_with_old_priv(i32 8, i8* %13)
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  br label %17

15:                                               ; preds = %1
  %16 = call %struct.net_device* @rtw_alloc_etherdev(i32 8)
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %42

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.adapter* @rtw_netdev_priv(%struct.net_device* %24)
  store %struct.adapter* %25, %struct.adapter** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  store %struct.net_device* %26, %struct.net_device** %28, align 8
  %29 = call i32 @DBG_871X(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 2
  store i32* @rtw_netdev_ops, i32** %31, align 8
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 %32, 3
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  store %struct.iw_handler_def* bitcast (i32* @rtw_handlers_def to %struct.iw_handler_def*), %struct.iw_handler_def** %37, align 8
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @loadparam(%struct.adapter* %38, %struct.net_device* %39)
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %41, %struct.net_device** %2, align 8
  br label %42

42:                                               ; preds = %23, %22
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %43
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local %struct.net_device* @rtw_alloc_etherdev_with_old_priv(i32, i8*) #1

declare dso_local %struct.net_device* @rtw_alloc_etherdev(i32) #1

declare dso_local i32 @pr_info(i8*, %struct.net_device*) #1

declare dso_local %struct.adapter* @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @loadparam(%struct.adapter*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
