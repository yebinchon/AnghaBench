; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bq27xxx_device_info = type { i64, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.power_supply_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.power_supply_config = type { %struct.bq27xxx_device_info*, i32 }

@bq27xxx_battery_poll = common dso_local global i32 0, align 4
@bq27xxx_chip_data = common dso_local global %struct.TYPE_6__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@bq27xxx_battery_get_property = common dso_local global i32 0, align 4
@bq27xxx_external_power_changed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@bq27xxx_list_lock = common dso_local global i32 0, align 4
@bq27xxx_battery_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bq27xxx_battery_setup(%struct.bq27xxx_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq27xxx_device_info*, align 8
  %4 = alloca %struct.power_supply_desc*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %3, align 8
  %6 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  %7 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  store %struct.bq27xxx_device_info* %7, %struct.bq27xxx_device_info** %6, align 8
  %8 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 1
  %9 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %10 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 8
  %14 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %15 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %14, i32 0, i32 10
  %16 = load i32, i32* @bq27xxx_battery_poll, align 4
  %17 = call i32 @INIT_DELAYED_WORK(i32* %15, i32 %16)
  %18 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %19 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %18, i32 0, i32 9
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bq27xxx_chip_data, align 8
  %22 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %23 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %29 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bq27xxx_chip_data, align 8
  %31 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %32 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %38 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bq27xxx_chip_data, align 8
  %40 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %41 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %47 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bq27xxx_chip_data, align 8
  %49 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %50 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %56 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %58 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.power_supply_desc* @devm_kzalloc(%struct.TYPE_5__* %59, i32 24, i32 %60)
  store %struct.power_supply_desc* %61, %struct.power_supply_desc** %4, align 8
  %62 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %63 = icmp ne %struct.power_supply_desc* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %1
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %131

67:                                               ; preds = %1
  %68 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %69 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %72 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %74 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %75 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bq27xxx_chip_data, align 8
  %77 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %78 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %84 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bq27xxx_chip_data, align 8
  %86 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %87 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %93 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @bq27xxx_battery_get_property, align 4
  %95 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %96 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @bq27xxx_external_power_changed, align 4
  %98 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %99 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %101 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %104 = call i32 @power_supply_register_no_ws(%struct.TYPE_5__* %102, %struct.power_supply_desc* %103, %struct.power_supply_config* %5)
  %105 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %106 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %108 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @IS_ERR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %67
  %113 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %114 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %113, i32 0, i32 3
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = call i32 @dev_err(%struct.TYPE_5__* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %117 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %118 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @PTR_ERR(i32 %119)
  store i32 %120, i32* %2, align 4
  br label %131

121:                                              ; preds = %67
  %122 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %123 = call i32 @bq27xxx_battery_settings(%struct.bq27xxx_device_info* %122)
  %124 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %125 = call i32 @bq27xxx_battery_update(%struct.bq27xxx_device_info* %124)
  %126 = call i32 @mutex_lock(i32* @bq27xxx_list_lock)
  %127 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %128 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %127, i32 0, i32 1
  %129 = call i32 @list_add(i32* %128, i32* @bq27xxx_battery_devices)
  %130 = call i32 @mutex_unlock(i32* @bq27xxx_list_lock)
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %121, %112, %64
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.power_supply_desc* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @power_supply_register_no_ws(%struct.TYPE_5__*, %struct.power_supply_desc*, %struct.power_supply_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @bq27xxx_battery_settings(%struct.bq27xxx_device_info*) #1

declare dso_local i32 @bq27xxx_battery_update(%struct.bq27xxx_device_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
