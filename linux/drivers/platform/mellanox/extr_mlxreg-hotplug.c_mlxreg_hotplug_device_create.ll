; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_hotplug_priv_data = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlxreg_core_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mlxreg_core_hotplug_platform_data = type { i64 }

@KOBJ_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to get adapter for bus %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to create client %s at bus %d at addr 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_core_data*)* @mlxreg_hotplug_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_hotplug_device_create(%struct.mlxreg_hotplug_priv_data* %0, %struct.mlxreg_core_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxreg_hotplug_priv_data*, align 8
  %5 = alloca %struct.mlxreg_core_data*, align 8
  %6 = alloca %struct.mlxreg_core_hotplug_platform_data*, align 8
  store %struct.mlxreg_hotplug_priv_data* %0, %struct.mlxreg_hotplug_priv_data** %4, align 8
  store %struct.mlxreg_core_data* %1, %struct.mlxreg_core_data** %5, align 8
  %7 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %4, align 8
  %8 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* @KOBJ_CHANGE, align 4
  %12 = call i32 @kobject_uevent(i32* %10, i32 %11)
  %13 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %14 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

19:                                               ; preds = %2
  %20 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %4, align 8
  %21 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call %struct.mlxreg_core_hotplug_platform_data* @dev_get_platdata(i32* %23)
  store %struct.mlxreg_core_hotplug_platform_data* %24, %struct.mlxreg_core_hotplug_platform_data** %6, align 8
  %25 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %26 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %6, align 8
  %30 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = call i32* @i2c_get_adapter(i64 %32)
  %34 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %35 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32* %33, i32** %36, align 8
  %37 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %38 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %19
  %43 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %4, align 8
  %44 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %47 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %6, align 8
  %51 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @EFAULT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %112

57:                                               ; preds = %19
  %58 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %59 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %63 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 @i2c_new_device(i32* %61, %struct.TYPE_8__* %65)
  %67 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %68 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 8
  %70 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %71 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %111, label %75

75:                                               ; preds = %57
  %76 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %4, align 8
  %77 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %80 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %87 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %6, align 8
  %91 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %95 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %93, i32 %99)
  %101 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %102 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @i2c_put_adapter(i32* %104)
  %106 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %107 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32* null, i32** %108, align 8
  %109 = load i32, i32* @EFAULT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %57
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %75, %42, %18
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.mlxreg_core_hotplug_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32* @i2c_get_adapter(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @i2c_new_device(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @i2c_put_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
