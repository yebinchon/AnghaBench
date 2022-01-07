; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethsw_port_priv = type { i32, %struct.ethsw_core*, %struct.net_device* }
%struct.ethsw_core = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.dpsw_vlan_if_cfg = type { i32, i32* }

@DEFAULT_VLAN_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dpsw_vlan_remove_if_untagged err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"dpsw_vlan_remove_if err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethsw_port_priv*, i32)* @ethsw_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_port_init(%struct.ethsw_port_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethsw_port_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ethsw_core*, align 8
  %8 = alloca %struct.dpsw_vlan_if_cfg, align 8
  %9 = alloca i32, align 4
  store %struct.ethsw_port_priv* %0, %struct.ethsw_port_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %13, i32 0, i32 1
  %15 = load %struct.ethsw_core*, %struct.ethsw_core** %14, align 8
  store %struct.ethsw_core* %15, %struct.ethsw_core** %7, align 8
  %16 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, %struct.dpsw_vlan_if_cfg* %8, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.dpsw_vlan_if_cfg, %struct.dpsw_vlan_if_cfg* %8, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %24 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %27 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DEFAULT_VLAN_ID, align 4
  %30 = call i32 @dpsw_vlan_remove_if_untagged(i32 %25, i32 0, i32 %28, i32 %29, %struct.dpsw_vlan_if_cfg* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %2
  %39 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %40 = call i32 @ethsw_port_set_pvid(%struct.ethsw_port_priv* %39, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %62

45:                                               ; preds = %38
  %46 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %47 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %50 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DEFAULT_VLAN_ID, align 4
  %53 = call i32 @dpsw_vlan_remove_if(i32 %48, i32 0, i32 %51, i32 %52, %struct.dpsw_vlan_if_cfg* %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %45
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %43, %33
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @dpsw_vlan_remove_if_untagged(i32, i32, i32, i32, %struct.dpsw_vlan_if_cfg*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ethsw_port_set_pvid(%struct.ethsw_port_priv*, i32) #1

declare dso_local i32 @dpsw_vlan_remove_if(i32, i32, i32, i32, %struct.dpsw_vlan_if_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
