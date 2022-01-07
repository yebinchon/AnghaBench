; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_register_lte_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_register_lte_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_dev = type { %struct.net_device** }
%struct.net_device = type { i32, i32, i32, i32* }
%struct.device = type { i32 }
%struct.nic = type { i32, i32, i64, %struct.phy_dev*, %struct.net_device* }

@MAX_NIC_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"lte%%dpdn%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ether_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gdm_netdev_ops = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@DEFAULT_MTU_SIZE = common dso_local global i32 0, align 4
@wwan_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_lte_device(%struct.phy_dev* %0, %struct.device* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.nic*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.phy_dev* %0, %struct.phy_dev** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load i64*, i64** %7, align 8
  %14 = call i32 @validate_mac_address(i64* %13)
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %88, %3
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @MAX_NIC_TYPE, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %15
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %24 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %25 = load i32, i32* @ether_setup, align 4
  %26 = call %struct.net_device* @alloc_netdev(i32 32, i8* %23, i32 %24, i32 %25)
  store %struct.net_device* %26, %struct.net_device** %9, align 8
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %92

32:                                               ; preds = %19
  %33 = load %struct.net_device*, %struct.net_device** %9, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 3
  store i32* @gdm_netdev_ops, i32** %34, align 8
  %35 = load i32, i32* @IFF_MULTICAST, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.net_device*, %struct.net_device** %9, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* @DEFAULT_MTU_SIZE, align 4
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = call %struct.nic* @netdev_priv(%struct.net_device* %44)
  store %struct.nic* %45, %struct.nic** %8, align 8
  %46 = load %struct.nic*, %struct.nic** %8, align 8
  %47 = call i32 @memset(%struct.nic* %46, i32 0, i32 32)
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = load %struct.nic*, %struct.nic** %8, align 8
  %50 = getelementptr inbounds %struct.nic, %struct.nic* %49, i32 0, i32 4
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.phy_dev*, %struct.phy_dev** %5, align 8
  %52 = load %struct.nic*, %struct.nic** %8, align 8
  %53 = getelementptr inbounds %struct.nic, %struct.nic* %52, i32 0, i32 3
  store %struct.phy_dev* %51, %struct.phy_dev** %53, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.nic*, %struct.nic** %8, align 8
  %56 = getelementptr inbounds %struct.nic, %struct.nic* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %9, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.nic*, %struct.nic** %8, align 8
  %61 = getelementptr inbounds %struct.nic, %struct.nic* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nic*, %struct.nic** %8, align 8
  %64 = getelementptr inbounds %struct.nic, %struct.nic* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @form_mac_address(i32 %59, i32 %62, i32 %65, i64* %66, i64 %67)
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @SET_NETDEV_DEV(%struct.net_device* %69, %struct.device* %70)
  %72 = load %struct.net_device*, %struct.net_device** %9, align 8
  %73 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %72, i32* @wwan_type)
  %74 = load %struct.net_device*, %struct.net_device** %9, align 8
  %75 = call i32 @register_netdev(%struct.net_device* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %32
  br label %92

79:                                               ; preds = %32
  %80 = load %struct.net_device*, %struct.net_device** %9, align 8
  %81 = call i32 @netif_carrier_on(%struct.net_device* %80)
  %82 = load %struct.net_device*, %struct.net_device** %9, align 8
  %83 = load %struct.phy_dev*, %struct.phy_dev** %5, align 8
  %84 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %83, i32 0, i32 0
  %85 = load %struct.net_device**, %struct.net_device*** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.net_device*, %struct.net_device** %85, i64 %86
  store %struct.net_device* %82, %struct.net_device** %87, align 8
  br label %88

88:                                               ; preds = %79
  %89 = load i64, i64* %12, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %15

91:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %96

92:                                               ; preds = %78, %29
  %93 = load %struct.phy_dev*, %struct.phy_dev** %5, align 8
  %94 = call i32 @unregister_lte_device(%struct.phy_dev* %93)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %91
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @validate_mac_address(i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.nic*, i32, i32) #1

declare dso_local i32 @form_mac_address(i32, i32, i32, i64*, i64) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @unregister_lte_device(%struct.phy_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
