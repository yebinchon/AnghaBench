; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_swdev_port_obj_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_swdev_port_obj_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32 }
%struct.switchdev_trans = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj*, %struct.switchdev_trans*)* @swdev_port_obj_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swdev_port_obj_add(%struct.net_device* %0, %struct.switchdev_obj* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_obj*, align 8
  %6 = alloca %struct.switchdev_trans*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %5, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %6, align 8
  %8 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %9 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 128, label %11
    i32 129, label %17
  ]

11:                                               ; preds = %3
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %14 = call i32 @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj* %13)
  %15 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %16 = call i32 @port_vlans_add(%struct.net_device* %12, i32 %14, %struct.switchdev_trans* %15)
  store i32 %16, i32* %7, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %20 = call i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj* %19)
  %21 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %22 = call i32 @port_mdb_add(%struct.net_device* %18, i32 %20, %struct.switchdev_trans* %21)
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %17, %11
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @port_vlans_add(%struct.net_device*, i32, %struct.switchdev_trans*) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_VLAN(%struct.switchdev_obj*) #1

declare dso_local i32 @port_mdb_add(%struct.net_device*, i32, %struct.switchdev_trans*) #1

declare dso_local i32 @SWITCHDEV_OBJ_PORT_MDB(%struct.switchdev_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
