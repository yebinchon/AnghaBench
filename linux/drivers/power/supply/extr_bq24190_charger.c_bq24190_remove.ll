; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.bq24190_dev_info = type { i32, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"pm_runtime_get failed: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @bq24190_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.bq24190_dev_info*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.bq24190_dev_info* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.bq24190_dev_info* %6, %struct.bq24190_dev_info** %3, align 8
  %7 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %8 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %15 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %20 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_put_noidle(i32 %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %25 = call i32 @bq24190_register_reset(%struct.bq24190_dev_info* %24)
  %26 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %27 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %32 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @power_supply_unregister(i64 %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %37 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @power_supply_unregister(i64 %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %44 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pm_runtime_put_sync(i32 %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %49 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pm_runtime_dont_use_autosuspend(i32 %50)
  %52 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %53 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pm_runtime_disable(i32 %54)
  ret i32 0
}

declare dso_local %struct.bq24190_dev_info* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @bq24190_register_reset(%struct.bq24190_dev_info*) #1

declare dso_local i32 @power_supply_unregister(i64) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
