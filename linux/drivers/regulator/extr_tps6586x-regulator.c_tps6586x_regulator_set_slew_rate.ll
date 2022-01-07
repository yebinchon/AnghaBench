; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_tps6586x_regulator_set_slew_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6586x-regulator.c_tps6586x_regulator_set_slew_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.regulator_init_data = type { %struct.tps6586x_settings* }
%struct.tps6586x_settings = type { i32 }

@TPS6586X_SLEW_RATE_SET = common dso_local global i32 0, align 4
@TPS6586X_SM0SL = common dso_local global i32 0, align 4
@TPS6586X_SM1SL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Only SM0/SM1 can set slew rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS6586X_SLEW_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, %struct.regulator_init_data*)* @tps6586x_regulator_set_slew_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6586x_regulator_set_slew_rate(%struct.platform_device* %0, i32 %1, %struct.regulator_init_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.tps6586x_settings*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regulator_init_data* %2, %struct.regulator_init_data** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %16 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %15, i32 0, i32 0
  %17 = load %struct.tps6586x_settings*, %struct.tps6586x_settings** %16, align 8
  store %struct.tps6586x_settings* %17, %struct.tps6586x_settings** %9, align 8
  %18 = load %struct.tps6586x_settings*, %struct.tps6586x_settings** %9, align 8
  %19 = icmp eq %struct.tps6586x_settings* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.tps6586x_settings*, %struct.tps6586x_settings** %9, align 8
  %23 = getelementptr inbounds %struct.tps6586x_settings, %struct.tps6586x_settings* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TPS6586X_SLEW_RATE_SET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %50

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %35 [
    i32 129, label %31
    i32 128, label %33
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @TPS6586X_SM0SL, align 4
  store i32 %32, i32* %10, align 4
  br label %41

33:                                               ; preds = %29
  %34 = load i32, i32* @TPS6586X_SM1SL, align 4
  store i32 %34, i32* %10, align 4
  br label %41

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_2__* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %50

41:                                               ; preds = %33, %31
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.tps6586x_settings*, %struct.tps6586x_settings** %9, align 8
  %45 = getelementptr inbounds %struct.tps6586x_settings, %struct.tps6586x_settings* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TPS6586X_SLEW_RATE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @tps6586x_write(%struct.device* %42, i32 %43, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %41, %35, %28, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @tps6586x_write(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
