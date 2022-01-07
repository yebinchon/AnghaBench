; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_tps65090-charger.c_tps65090_parse_dt_charger_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_tps65090-charger.c_tps65090_parse_dt_charger_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65090_platform_data = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Memory alloc for tps65090_pdata failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ti,enable-low-current-chrg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tps65090_platform_data* (%struct.platform_device*)* @tps65090_parse_dt_charger_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tps65090_platform_data* @tps65090_parse_dt_charger_data(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.tps65090_platform_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65090_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tps65090_platform_data* @devm_kzalloc(%struct.TYPE_3__* %12, i32 8, i32 %13)
  store %struct.tps65090_platform_data* %14, %struct.tps65090_platform_data** %4, align 8
  %15 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %4, align 8
  %16 = icmp ne %struct.tps65090_platform_data* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_3__* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.tps65090_platform_data* null, %struct.tps65090_platform_data** %2, align 8
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = call i32 @of_property_read_bool(%struct.device_node* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %4, align 8
  %26 = getelementptr inbounds %struct.tps65090_platform_data, %struct.tps65090_platform_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.tps65090_platform_data, %struct.tps65090_platform_data* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  %29 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %4, align 8
  store %struct.tps65090_platform_data* %29, %struct.tps65090_platform_data** %2, align 8
  br label %30

30:                                               ; preds = %21, %17
  %31 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %2, align 8
  ret %struct.tps65090_platform_data* %31
}

declare dso_local %struct.tps65090_platform_data* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
