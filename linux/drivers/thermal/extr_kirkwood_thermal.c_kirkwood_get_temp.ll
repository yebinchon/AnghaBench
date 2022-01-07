; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_kirkwood_thermal.c_kirkwood_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_kirkwood_thermal.c_kirkwood_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, %struct.kirkwood_thermal_priv* }
%struct.kirkwood_thermal_priv = type { i32 }

@KIRKWOOD_THERMAL_VALID_OFFSET = common dso_local global i64 0, align 8
@KIRKWOOD_THERMAL_VALID_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Temperature sensor reading not valid\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@KIRKWOOD_THERMAL_TEMP_OFFSET = common dso_local global i64 0, align 8
@KIRKWOOD_THERMAL_TEMP_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @kirkwood_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_get_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kirkwood_thermal_priv*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %9 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %8, i32 0, i32 1
  %10 = load %struct.kirkwood_thermal_priv*, %struct.kirkwood_thermal_priv** %9, align 8
  store %struct.kirkwood_thermal_priv* %10, %struct.kirkwood_thermal_priv** %7, align 8
  %11 = load %struct.kirkwood_thermal_priv*, %struct.kirkwood_thermal_priv** %7, align 8
  %12 = getelementptr inbounds %struct.kirkwood_thermal_priv, %struct.kirkwood_thermal_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @readl_relaxed(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @KIRKWOOD_THERMAL_VALID_OFFSET, align 8
  %17 = lshr i64 %15, %16
  %18 = load i64, i64* @KIRKWOOD_THERMAL_VALID_MASK, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %23 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @KIRKWOOD_THERMAL_TEMP_OFFSET, align 8
  %30 = lshr i64 %28, %29
  %31 = load i64, i64* @KIRKWOOD_THERMAL_TEMP_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = mul i64 10000000, %33
  %35 = sub i64 3220000000, %34
  %36 = udiv i64 %35, 13625
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %27, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
