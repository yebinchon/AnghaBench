; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw-ethtool.c_ethsw_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw-ethtool.c_ethsw_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.ethsw_port_priv = type { i32, %struct.ethsw_core* }
%struct.ethsw_core = type { i32, i32 }
%struct.dpsw_link_cfg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"dpsw_if_disable err %d\0A\00", align 1
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@DPSW_LINK_OPT_AUTONEG = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DPSW_LINK_OPT_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"dpsw_if_enable err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ethsw_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.ethsw_port_priv*, align 8
  %7 = alloca %struct.ethsw_core*, align 8
  %8 = alloca %struct.dpsw_link_cfg, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ethsw_port_priv* %13, %struct.ethsw_port_priv** %6, align 8
  %14 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %15 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %14, i32 0, i32 1
  %16 = load %struct.ethsw_core*, %struct.ethsw_core** %15, align 8
  store %struct.ethsw_core* %16, %struct.ethsw_core** %7, align 8
  %17 = bitcast %struct.dpsw_link_cfg* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 12, i1 false)
  store i32 0, i32* %10, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @netif_running(%struct.net_device* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %24 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %27 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dpsw_if_disable(i32 %25, i32 0, i32 %28, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %120

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.dpsw_link_cfg, %struct.dpsw_link_cfg* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUTONEG_ENABLE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load i32, i32* @DPSW_LINK_OPT_AUTONEG, align 4
  %55 = getelementptr inbounds %struct.dpsw_link_cfg, %struct.dpsw_link_cfg* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %64

58:                                               ; preds = %41
  %59 = load i32, i32* @DPSW_LINK_OPT_AUTONEG, align 4
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds %struct.dpsw_link_cfg, %struct.dpsw_link_cfg* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DUPLEX_HALF, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* @DPSW_LINK_OPT_HALF_DUPLEX, align 4
  %73 = getelementptr inbounds %struct.dpsw_link_cfg, %struct.dpsw_link_cfg* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %82

76:                                               ; preds = %64
  %77 = load i32, i32* @DPSW_LINK_OPT_HALF_DUPLEX, align 4
  %78 = xor i32 %77, -1
  %79 = getelementptr inbounds %struct.dpsw_link_cfg, %struct.dpsw_link_cfg* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %84 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %83, i32 0, i32 1
  %85 = load %struct.ethsw_core*, %struct.ethsw_core** %84, align 8
  %86 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %89 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %88, i32 0, i32 1
  %90 = load %struct.ethsw_core*, %struct.ethsw_core** %89, align 8
  %91 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %94 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dpsw_if_set_link_cfg(i32 %87, i32 0, i32 %92, i32 %95, %struct.dpsw_link_cfg* %8)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %82
  %100 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %101 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %104 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %107 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dpsw_if_enable(i32 %102, i32 0, i32 %105, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %99
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @netdev_err(%struct.net_device* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %3, align 4
  br label %120

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %117, %82
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %112, %35
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dpsw_if_disable(i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @dpsw_if_set_link_cfg(i32, i32, i32, i32, %struct.dpsw_link_cfg*) #1

declare dso_local i32 @dpsw_if_enable(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
