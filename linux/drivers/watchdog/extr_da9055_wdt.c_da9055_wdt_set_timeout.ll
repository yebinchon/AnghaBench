; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9055_wdt.c_da9055_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9055_wdt.c_da9055_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.watchdog_device = type { i32 }
%struct.da9055_wdt_data = type { %struct.da9055* }
%struct.da9055 = type { i32 }

@da9055_wdt_maps = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DA9055_REG_CONTROL_B = common dso_local global i32 0, align 4
@DA9055_TWDSCALE_MASK = common dso_local global i32 0, align 4
@DA9055_TWDSCALE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to update timescale bit, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @da9055_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9055_wdt_data*, align 8
  %7 = alloca %struct.da9055*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.da9055_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.da9055_wdt_data* %11, %struct.da9055_wdt_data** %6, align 8
  %12 = load %struct.da9055_wdt_data*, %struct.da9055_wdt_data** %6, align 8
  %13 = getelementptr inbounds %struct.da9055_wdt_data, %struct.da9055_wdt_data* %12, i32 0, i32 0
  %14 = load %struct.da9055*, %struct.da9055** %13, align 8
  store %struct.da9055* %14, %struct.da9055** %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_wdt_maps, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_wdt_maps, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %15

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_wdt_maps, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %55

42:                                               ; preds = %34
  %43 = load %struct.da9055*, %struct.da9055** %7, align 8
  %44 = load i32, i32* @DA9055_REG_CONTROL_B, align 4
  %45 = load i32, i32* @DA9055_TWDSCALE_MASK, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @da9055_wdt_maps, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DA9055_TWDSCALE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @da9055_reg_update(%struct.da9055* %43, i32 %44, i32 %45, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %42, %39
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.da9055*, %struct.da9055** %7, align 8
  %60 = getelementptr inbounds %struct.da9055, %struct.da9055* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %68 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.da9055_wdt_data* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @da9055_reg_update(%struct.da9055*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
