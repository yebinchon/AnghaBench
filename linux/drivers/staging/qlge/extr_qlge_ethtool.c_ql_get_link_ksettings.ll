; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ql_adapter = type { i32 }

@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@STS_LINK_TYPE_MASK = common dso_local global i32 0, align 4
@STS_LINK_TYPE_10GBASET = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ql_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ql_adapter* %9, %struct.ql_adapter** %5, align 8
  %10 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @STS_LINK_TYPE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @STS_LINK_TYPE_10GBASET, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load i32, i32* @SUPPORTED_TP, align 4
  %21 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @ADVERTISED_TP, align 4
  %26 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @PORT_TP, align 4
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @AUTONEG_ENABLE, align 4
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  br label %49

38:                                               ; preds = %2
  %39 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @PORT_FIBRE, align 4
  %46 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %38, %19
  %50 = load i32, i32* @SPEED_10000, align 4
  %51 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @DUPLEX_FULL, align 4
  %55 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %61, i32 %62)
  %64 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %67, i32 %68)
  ret i32 0
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
