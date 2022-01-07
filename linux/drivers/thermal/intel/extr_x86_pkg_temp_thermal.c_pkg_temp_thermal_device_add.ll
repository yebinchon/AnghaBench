; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_pkg_temp_thermal_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_pkg_temp_thermal_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone_device = type { i32, i32, i32, i32, i32, i32, i32 }

@max_id = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MAX_NUMBER_OF_TRIPS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pkg_temp_thermal_threshold_work_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"x86_pkg_temp\00", align 1
@tzone_ops = common dso_local global i32 0, align 4
@pkg_temp_tz_params = common dso_local global i32 0, align 4
@MSR_IA32_PACKAGE_THERM_INTERRUPT = common dso_local global i32 0, align 4
@pkg_temp_lock = common dso_local global i32 0, align 4
@zones = common dso_local global %struct.zone_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pkg_temp_thermal_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_temp_thermal_device_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zone_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @topology_logical_die_id(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @max_id, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %102

21:                                               ; preds = %1
  %22 = call i32 @cpuid(i32 6, i32* %6, i32* %7, i32* %8, i32* %9)
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 7
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %102

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MAX_NUMBER_OF_TRIPS, align 4
  %33 = call i32 @clamp_val(i32 %31, i32 0, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @get_tj_max(i32 %34, i32* %5)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %2, align 4
  br label %102

40:                                               ; preds = %30
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.zone_device* @kzalloc(i32 28, i32 %41)
  store %struct.zone_device* %42, %struct.zone_device** %10, align 8
  %43 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %44 = icmp ne %struct.zone_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %102

48:                                               ; preds = %40
  %49 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %50 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %49, i32 0, i32 6
  %51 = load i32, i32* @pkg_temp_thermal_threshold_work_fn, align 4
  %52 = call i32 @INIT_DELAYED_WORK(i32* %50, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %55 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %58 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @MAX_NUMBER_OF_TRIPS, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 3, i32 1
  %65 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %66 = call i32 @thermal_zone_device_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %64, %struct.zone_device* %65, i32* @tzone_ops, i32* @pkg_temp_tz_params, i32 0, i32 0)
  %67 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %68 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %70 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %48
  %75 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %76 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %80 = call i32 @kfree(%struct.zone_device* %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %2, align 4
  br label %102

82:                                               ; preds = %48
  %83 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %84 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %85 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %88 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rdmsr(i32 %83, i32 %86, i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %93 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %92, i32 0, i32 2
  %94 = call i32 @cpumask_set_cpu(i32 %91, i32* %93)
  %95 = call i32 @spin_lock_irq(i32* @pkg_temp_lock)
  %96 = load %struct.zone_device*, %struct.zone_device** %10, align 8
  %97 = load %struct.zone_device**, %struct.zone_device*** @zones, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.zone_device*, %struct.zone_device** %97, i64 %99
  store %struct.zone_device* %96, %struct.zone_device** %100, align 8
  %101 = call i32 @spin_unlock_irq(i32* @pkg_temp_lock)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %82, %74, %45, %38, %27, %18
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @topology_logical_die_id(i32) #1

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @get_tj_max(i32, i32*) #1

declare dso_local %struct.zone_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @thermal_zone_device_register(i8*, i32, i32, %struct.zone_device*, i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.zone_device*) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
