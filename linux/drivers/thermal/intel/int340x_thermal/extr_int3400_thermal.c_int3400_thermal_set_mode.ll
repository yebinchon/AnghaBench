; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_thermal_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int3400_thermal.c_int3400_thermal_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.int3400_thermal_priv* }
%struct.int3400_thermal_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@THERMAL_DEVICE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32)* @int3400_thermal_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int3400_thermal_set_mode(%struct.thermal_zone_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.int3400_thermal_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %10 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 0
  %11 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %10, align 8
  store %struct.int3400_thermal_priv* %11, %struct.int3400_thermal_priv** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %6, align 8
  %13 = icmp ne %struct.int3400_thermal_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @THERMAL_DEVICE_DISABLED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %6, align 8
  %34 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %6, align 8
  %40 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %6, align 8
  %42 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.int3400_thermal_priv*, %struct.int3400_thermal_priv** %6, align 8
  %47 = getelementptr inbounds %struct.int3400_thermal_priv, %struct.int3400_thermal_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @int3400_thermal_run_osc(i32 %45, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %37, %31
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %27, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @int3400_thermal_run_osc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
