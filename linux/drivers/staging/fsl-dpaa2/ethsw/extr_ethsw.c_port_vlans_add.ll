; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_vlans_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_vlans_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj_port_vlan = type { i32, i32, i32 }
%struct.switchdev_trans = type { i32 }
%struct.ethsw_port_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ETHSW_VLAN_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj_port_vlan*, %struct.switchdev_trans*)* @port_vlans_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_vlans_add(%struct.net_device* %0, %struct.switchdev_obj_port_vlan* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.ethsw_port_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.switchdev_obj_port_vlan* %1, %struct.switchdev_obj_port_vlan** %6, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ethsw_port_priv* %12, %struct.ethsw_port_priv** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %14 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

17:                                               ; preds = %3
  %18 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %19 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %71, %17
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %24 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %21
  %28 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %8, align 8
  %29 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %27
  %39 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %8, align 8
  %40 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ethsw_add_vlan(%struct.TYPE_2__* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %76

48:                                               ; preds = %38
  %49 = load i32, i32* @ETHSW_VLAN_GLOBAL, align 4
  %50 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %8, align 8
  %51 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %49
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %48, %27
  %61 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %64 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ethsw_port_add_vlan(%struct.ethsw_port_priv* %61, i32 %62, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %74

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %21

74:                                               ; preds = %69, %21
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %46, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local i32 @ethsw_add_vlan(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @ethsw_port_add_vlan(%struct.ethsw_port_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
