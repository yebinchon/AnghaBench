; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_set_pvid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_set_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethsw_port_priv = type { i64, i32, i32*, %struct.net_device*, %struct.ethsw_core* }
%struct.net_device = type { i32 }
%struct.ethsw_core = type { i32, i32 }
%struct.dpsw_tci_cfg = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"dpsw_if_get_tci err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dpsw_if_disable err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"dpsw_if_set_tci err %d\0A\00", align 1
@ETHSW_VLAN_PVID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"dpsw_if_enable err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethsw_port_priv*, i64)* @ethsw_port_set_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_port_set_pvid(%struct.ethsw_port_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethsw_port_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ethsw_core*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.dpsw_tci_cfg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ethsw_port_priv* %0, %struct.ethsw_port_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %12, i32 0, i32 4
  %14 = load %struct.ethsw_core*, %struct.ethsw_core** %13, align 8
  store %struct.ethsw_core* %14, %struct.ethsw_core** %6, align 8
  %15 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %15, i32 0, i32 3
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = bitcast %struct.dpsw_tci_cfg* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %20 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %23 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dpsw_if_get_tci(i32 %21, i32 0, i32 %24, i32 %27, %struct.dpsw_tci_cfg* %8)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %126

36:                                               ; preds = %2
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.dpsw_tci_cfg, %struct.dpsw_tci_cfg* %8, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = call i32 @netif_oper_up(%struct.net_device* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %45 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %48 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dpsw_if_disable(i32 %46, i32 0, i32 %49, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %43
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %126

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %36
  %63 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %64 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %67 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %70 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dpsw_if_set_tci(i32 %65, i32 0, i32 %68, i32 %71, %struct.dpsw_tci_cfg* %8)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @netdev_err(%struct.net_device* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %102

79:                                               ; preds = %62
  %80 = load i32, i32* @ETHSW_VLAN_PVID, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %83 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %86 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %81
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @ETHSW_VLAN_PVID, align 4
  %92 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %93 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %91
  store i32 %98, i32* %96, align 4
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %101 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %79, %75
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %107 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ethsw_core*, %struct.ethsw_core** %6, align 8
  %110 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %113 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dpsw_if_enable(i32 %108, i32 0, i32 %111, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %105
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @netdev_err(%struct.net_device* %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %3, align 4
  br label %126

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %102
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %124, %118, %56, %31
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dpsw_if_get_tci(i32, i32, i32, i32, %struct.dpsw_tci_cfg*) #2

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #2

declare dso_local i32 @netif_oper_up(%struct.net_device*) #2

declare dso_local i32 @dpsw_if_disable(i32, i32, i32, i32) #2

declare dso_local i32 @dpsw_if_set_tci(i32, i32, i32, i32, %struct.dpsw_tci_cfg*) #2

declare dso_local i32 @dpsw_if_enable(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
