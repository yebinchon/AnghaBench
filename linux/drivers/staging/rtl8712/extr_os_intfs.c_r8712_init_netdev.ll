; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_r8712_init_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_r8712_init_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.iw_handler_def*, i32, i32* }
%struct.iw_handler_def = type { i32 }
%struct._adapter = type { i64, %struct.net_device* }

@ifname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"r8712u: register rtl8712_netdev_ops to netdev_ops\0A\00", align 1
@rtl8712_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@r871x_handlers_def = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @r8712_init_netdev() #0 {
  %1 = alloca %struct.net_device*, align 8
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = call %struct.net_device* @alloc_etherdev(i32 16)
  store %struct.net_device* %4, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = icmp ne %struct.net_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.net_device* null, %struct.net_device** %1, align 8
  br label %41

8:                                                ; preds = %0
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = load i32, i32* @ifname, align 4
  %11 = call i64 @dev_alloc_name(%struct.net_device* %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i32, i32* @ifname, align 4
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load i32, i32* @ifname, align 4
  %18 = call i64 @dev_alloc_name(%struct.net_device* %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call %struct._adapter* @netdev_priv(%struct.net_device* %20)
  store %struct._adapter* %21, %struct._adapter** %2, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load %struct._adapter*, %struct._adapter** %2, align 8
  %24 = getelementptr inbounds %struct._adapter, %struct._adapter* %23, i32 0, i32 1
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 2
  store i32* @rtl8712_netdev_ops, i32** %27, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  store %struct.iw_handler_def* bitcast (i32* @r871x_handlers_def to %struct.iw_handler_def*), %struct.iw_handler_def** %32, align 8
  %33 = load %struct._adapter*, %struct._adapter** %2, align 8
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @loadparam(%struct._adapter* %33, %struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @netif_carrier_off(%struct.net_device* %36)
  %38 = load %struct._adapter*, %struct._adapter** %2, align 8
  %39 = getelementptr inbounds %struct._adapter, %struct._adapter* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  store %struct.net_device* %40, %struct.net_device** %1, align 8
  br label %41

41:                                               ; preds = %19, %7
  %42 = load %struct.net_device*, %struct.net_device** %1, align 8
  ret %struct.net_device* %42
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i64 @dev_alloc_name(%struct.net_device*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @loadparam(%struct._adapter*, %struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
