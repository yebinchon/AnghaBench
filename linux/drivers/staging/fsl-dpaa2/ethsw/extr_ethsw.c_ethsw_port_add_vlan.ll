; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_add_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_add_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethsw_port_priv = type { i32*, i32, %struct.net_device*, %struct.ethsw_core* }
%struct.net_device = type { i32 }
%struct.ethsw_core = type { i32, i32 }
%struct.dpsw_vlan_if_cfg = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"VLAN %d already configured\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"dpsw_vlan_add_if err %d\0A\00", align 1
@ETHSW_VLAN_MEMBER = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"dpsw_vlan_add_if_untagged err %d\0A\00", align 1
@ETHSW_VLAN_UNTAGGED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethsw_port_priv*, i64, i64)* @ethsw_port_add_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_port_add_vlan(%struct.ethsw_port_priv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ethsw_port_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ethsw_core*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.dpsw_vlan_if_cfg, align 8
  %11 = alloca i32, align 4
  store %struct.ethsw_port_priv* %0, %struct.ethsw_port_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %12, i32 0, i32 3
  %14 = load %struct.ethsw_core*, %struct.ethsw_core** %13, align 8
  store %struct.ethsw_core* %14, %struct.ethsw_core** %8, align 8
  %15 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %15, i32 0, i32 2
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @netdev_warn(%struct.net_device* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EEXIST, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %105

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, %struct.dpsw_vlan_if_cfg* %10, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, %struct.dpsw_vlan_if_cfg* %10, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ethsw_core*, %struct.ethsw_core** %8, align 8
  %40 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ethsw_core*, %struct.ethsw_core** %8, align 8
  %43 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @dpsw_vlan_add_if(i32 %41, i32 0, i32 %44, i64 %45, %struct.dpsw_vlan_if_cfg* %10)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load %struct.net_device*, %struct.net_device** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %105

54:                                               ; preds = %31
  %55 = load i32, i32* @ETHSW_VLAN_MEMBER, align 4
  %56 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %57 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @BRIDGE_VLAN_INFO_UNTAGGED, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %54
  %66 = load %struct.ethsw_core*, %struct.ethsw_core** %8, align 8
  %67 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ethsw_core*, %struct.ethsw_core** %8, align 8
  %70 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @dpsw_vlan_add_if_untagged(i32 %68, i32 0, i32 %71, i64 %72, %struct.dpsw_vlan_if_cfg* %10)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.net_device*, %struct.net_device** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @netdev_err(%struct.net_device* %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %105

81:                                               ; preds = %65
  %82 = load i32, i32* @ETHSW_VLAN_UNTAGGED, align 4
  %83 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %84 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %82
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %81, %54
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @BRIDGE_VLAN_INFO_PVID, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @ethsw_port_set_pvid(%struct.ethsw_port_priv* %96, i64 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %105

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %90
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %101, %76, %49, %25
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @dpsw_vlan_add_if(i32, i32, i32, i64, %struct.dpsw_vlan_if_cfg*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @dpsw_vlan_add_if_untagged(i32, i32, i32, i64, %struct.dpsw_vlan_if_cfg*) #1

declare dso_local i32 @ethsw_port_set_pvid(%struct.ethsw_port_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
