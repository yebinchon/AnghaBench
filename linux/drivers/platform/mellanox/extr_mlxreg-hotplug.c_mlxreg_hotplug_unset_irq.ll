; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_unset_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_unset_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_hotplug_priv_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxreg_core_hotplug_platform_data = type { i32, i64, i64, %struct.mlxreg_core_item* }
%struct.mlxreg_core_item = type { i32, %struct.mlxreg_core_data* }
%struct.mlxreg_core_data = type { i64 }

@MLXREG_HOTPLUG_AGGR_MASK_OFF = common dso_local global i64 0, align 8
@MLXREG_HOTPLUG_MASK_OFF = common dso_local global i64 0, align 8
@MLXREG_HOTPLUG_EVENT_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxreg_hotplug_priv_data*)* @mlxreg_hotplug_unset_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxreg_hotplug_unset_irq(%struct.mlxreg_hotplug_priv_data* %0) #0 {
  %2 = alloca %struct.mlxreg_hotplug_priv_data*, align 8
  %3 = alloca %struct.mlxreg_core_hotplug_platform_data*, align 8
  %4 = alloca %struct.mlxreg_core_item*, align 8
  %5 = alloca %struct.mlxreg_core_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxreg_hotplug_priv_data* %0, %struct.mlxreg_hotplug_priv_data** %2, align 8
  %9 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %2, align 8
  %10 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call %struct.mlxreg_core_hotplug_platform_data* @dev_get_platdata(i32* %12)
  store %struct.mlxreg_core_hotplug_platform_data* %13, %struct.mlxreg_core_hotplug_platform_data** %3, align 8
  %14 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %3, align 8
  %15 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %14, i32 0, i32 3
  %16 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %15, align 8
  store %struct.mlxreg_core_item* %16, %struct.mlxreg_core_item** %4, align 8
  %17 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %2, align 8
  %18 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @disable_irq(i32 %19)
  %21 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %2, align 8
  %22 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %21, i32 0, i32 1
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %3, align 8
  %25 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %2, align 8
  %30 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %3, align 8
  %33 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MLXREG_HOTPLUG_AGGR_MASK_OFF, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @regmap_write(i32 %31, i64 %36, i32 0)
  br label %38

38:                                               ; preds = %28, %1
  %39 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %2, align 8
  %40 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %3, align 8
  %43 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MLXREG_HOTPLUG_AGGR_MASK_OFF, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @regmap_write(i32 %41, i64 %46, i32 0)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %93, %38
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %3, align 8
  %51 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %48
  %55 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %4, align 8
  %56 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %55, i32 0, i32 1
  %57 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %56, align 8
  store %struct.mlxreg_core_data* %57, %struct.mlxreg_core_data** %5, align 8
  %58 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %2, align 8
  %59 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %62 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MLXREG_HOTPLUG_MASK_OFF, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @regmap_write(i32 %60, i64 %65, i32 0)
  %67 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %2, align 8
  %68 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %71 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MLXREG_HOTPLUG_EVENT_OFF, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @regmap_write(i32 %69, i64 %74, i32 0)
  %76 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %4, align 8
  %77 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %87, %54
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %2, align 8
  %85 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %86 = call i32 @mlxreg_hotplug_device_destroy(%struct.mlxreg_hotplug_priv_data* %84, %struct.mlxreg_core_data* %85)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %91 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %90, i32 1
  store %struct.mlxreg_core_data* %91, %struct.mlxreg_core_data** %5, align 8
  br label %79

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %4, align 8
  %97 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %96, i32 1
  store %struct.mlxreg_core_item* %97, %struct.mlxreg_core_item** %4, align 8
  br label %48

98:                                               ; preds = %48
  ret void
}

declare dso_local %struct.mlxreg_core_hotplug_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @mlxreg_hotplug_device_destroy(%struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_core_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
