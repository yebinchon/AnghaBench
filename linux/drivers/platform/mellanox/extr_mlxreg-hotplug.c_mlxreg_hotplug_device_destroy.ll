; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_device_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_device_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_hotplug_priv_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlxreg_core_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }

@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_core_data*)* @mlxreg_hotplug_device_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxreg_hotplug_device_destroy(%struct.mlxreg_hotplug_priv_data* %0, %struct.mlxreg_core_data* %1) #0 {
  %3 = alloca %struct.mlxreg_hotplug_priv_data*, align 8
  %4 = alloca %struct.mlxreg_core_data*, align 8
  store %struct.mlxreg_hotplug_priv_data* %0, %struct.mlxreg_hotplug_priv_data** %3, align 8
  store %struct.mlxreg_core_data* %1, %struct.mlxreg_core_data** %4, align 8
  %5 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %3, align 8
  %6 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* @KOBJ_CHANGE, align 4
  %10 = call i32 @kobject_uevent(i32* %8, i32 %9)
  %11 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %4, align 8
  %12 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %4, align 8
  %18 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @i2c_unregister_device(i32* %20)
  %22 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %4, align 8
  %23 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %4, align 8
  %27 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %4, align 8
  %33 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @i2c_put_adapter(i32* %35)
  %37 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %4, align 8
  %38 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %31, %25
  ret void
}

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @i2c_unregister_device(i32*) #1

declare dso_local i32 @i2c_put_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
