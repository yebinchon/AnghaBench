; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_mdiobus_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_of_mdio.c_of_mdiobus_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }
%struct.device_node = type { i32 }
%struct.mdio_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.device_node* }

@.str = private unnamed_addr constant [44 x i8] c"registered mdio device %pOFn at address %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, %struct.device_node*, i32)* @of_mdiobus_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_mdiobus_register_device(%struct.mii_bus* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdio_device*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.mdio_device* @mdio_device_create(%struct.mii_bus* %10, i32 %11)
  store %struct.mdio_device* %12, %struct.mdio_device** %8, align 8
  %13 = load %struct.mdio_device*, %struct.mdio_device** %8, align 8
  %14 = call i64 @IS_ERR(%struct.mdio_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.mdio_device*, %struct.mdio_device** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.mdio_device* %17)
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i32 @of_node_get(%struct.device_node* %20)
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = load %struct.mdio_device*, %struct.mdio_device** %8, align 8
  %24 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store %struct.device_node* %22, %struct.device_node** %25, align 8
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32 @of_fwnode_handle(%struct.device_node* %26)
  %28 = load %struct.mdio_device*, %struct.mdio_device** %8, align 8
  %29 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.mdio_device*, %struct.mdio_device** %8, align 8
  %32 = call i32 @mdio_device_register(%struct.mdio_device* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %19
  %36 = load %struct.mdio_device*, %struct.mdio_device** %8, align 8
  %37 = call i32 @mdio_device_free(%struct.mdio_device* %36)
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = call i32 @of_node_put(%struct.device_node* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %19
  %42 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %43 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %42, i32 0, i32 0
  %44 = load %struct.device_node*, %struct.device_node** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.device_node* %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %41, %35, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.mdio_device* @mdio_device_create(%struct.mii_bus*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mdio_device*) #1

declare dso_local i32 @PTR_ERR(%struct.mdio_device*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i32 @mdio_device_register(%struct.mdio_device*) #1

declare dso_local i32 @mdio_device_free(%struct.mdio_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
