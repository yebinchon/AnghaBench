; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_probe_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_probe_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethsw_core = type { %struct.ethsw_port_priv**, %struct.device* }
%struct.ethsw_port_priv = type { i64, i32, i32, %struct.ethsw_core*, %struct.net_device* }
%struct.net_device = type { i32, i32, i32*, i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"alloc_etherdev error\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BR_STATE_FORWARDING = common dso_local global i32 0, align 4
@ethsw_port_ops = common dso_local global i32 0, align 4
@ethsw_port_ethtool_ops = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@ETHSW_MAX_FRAME_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"register_netdev error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethsw_core*, i64)* @ethsw_probe_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_probe_port(%struct.ethsw_core* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethsw_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ethsw_port_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ethsw_core* %0, %struct.ethsw_core** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %11 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = call %struct.net_device* @alloc_etherdev(i32 32)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %22)
  store %struct.ethsw_port_priv* %23, %struct.ethsw_port_priv** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %26 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %25, i32 0, i32 4
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %28 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %28, i32 0, i32 3
  store %struct.ethsw_core* %27, %struct.ethsw_core** %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @BR_STATE_FORWARDING, align 4
  %34 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %35 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %37 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = call i32 @SET_NETDEV_DEV(%struct.net_device* %38, %struct.device* %39)
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 3
  store i32* @ethsw_port_ops, i32** %42, align 8
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 2
  store i32* @ethsw_port_ethtool_ops, i32** %44, align 8
  %45 = load i32, i32* @ETH_MIN_MTU, align 4
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ETHSW_MAX_FRAME_LENGTH, align 4
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @ethsw_port_init(%struct.ethsw_port_priv* %51, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %21
  br label %73

57:                                               ; preds = %21
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = call i32 @register_netdev(%struct.net_device* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %73

66:                                               ; preds = %57
  %67 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %68 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %69 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %68, i32 0, i32 0
  %70 = load %struct.ethsw_port_priv**, %struct.ethsw_port_priv*** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %70, i64 %71
  store %struct.ethsw_port_priv* %67, %struct.ethsw_port_priv** %72, align 8
  store i32 0, i32* %3, align 4
  br label %77

73:                                               ; preds = %62, %56
  %74 = load %struct.net_device*, %struct.net_device** %8, align 8
  %75 = call i32 @free_netdev(%struct.net_device* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %66, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @ethsw_port_init(%struct.ethsw_port_priv*, i64) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
