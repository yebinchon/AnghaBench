; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_pg_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_pg_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24257_device = type { i32*, i32 }

@BQ24257_PG_GPIO = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"probe retry requested for PG pin\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"error probing PG pin\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"probed PG pin = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bq24257_device*)* @bq24257_pg_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq24257_pg_gpio_probe(%struct.bq24257_device* %0) #0 {
  %2 = alloca %struct.bq24257_device*, align 8
  store %struct.bq24257_device* %0, %struct.bq24257_device** %2, align 8
  %3 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %4 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @BQ24257_PG_GPIO, align 4
  %7 = load i32, i32* @GPIOD_IN, align 4
  %8 = call i32* @devm_gpiod_get_optional(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %10 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %9, i32 0, i32 0
  store i32* %8, i32** %10, align 8
  %11 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %12 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @PTR_ERR(i32* %13)
  %15 = load i32, i32* @EPROBE_DEFER, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %20 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_info(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %25 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %31 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %35 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %51

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %39 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %44 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bq24257_device*, %struct.bq24257_device** %2, align 8
  %47 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @desc_to_gpio(i32* %48)
  %50 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %18, %29, %42, %37
  ret void
}

declare dso_local i32* @devm_gpiod_get_optional(i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @desc_to_gpio(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
