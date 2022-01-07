; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_soc_dts_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_soc_dts_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.soc_sensor_entry* }
%struct.soc_sensor_entry = type { i8*, i32 }

@QRK_MBI_UNIT_RMU = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@QRK_DTS_REG_OFFSET_ENABLE = common dso_local global i32 0, align 4
@QRK_DTS_ENABLE_BIT = common dso_local global i32 0, align 4
@THERMAL_DEVICE_ENABLED = common dso_local global i8* null, align 8
@MBI_REG_WRITE = common dso_local global i32 0, align 4
@THERMAL_DEVICE_DISABLED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"DTS is locked. Cannot enable DTS\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*)* @soc_dts_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_dts_enable(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_sensor_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %7, i32 0, i32 0
  %9 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %8, align 8
  store %struct.soc_sensor_entry* %9, %struct.soc_sensor_entry** %5, align 8
  %10 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %11 = load i32, i32* @MBI_REG_READ, align 4
  %12 = load i32, i32* @QRK_DTS_REG_OFFSET_ENABLE, align 4
  %13 = call i32 @iosf_mbi_read(i32 %10, i32 %11, i32 %12, i32* %4)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @QRK_DTS_ENABLE_BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i8*, i8** @THERMAL_DEVICE_ENABLED, align 8
  %25 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %5, align 8
  %26 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %2, align 4
  br label %58

27:                                               ; preds = %18
  %28 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %5, align 8
  %29 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @QRK_DTS_ENABLE_BIT, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %37 = load i32, i32* @MBI_REG_WRITE, align 4
  %38 = load i32, i32* @QRK_DTS_REG_OFFSET_ENABLE, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @iosf_mbi_write(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %58

45:                                               ; preds = %32
  %46 = load i8*, i8** @THERMAL_DEVICE_ENABLED, align 8
  %47 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %5, align 8
  %48 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %56

49:                                               ; preds = %27
  %50 = load i8*, i8** @THERMAL_DEVICE_DISABLED, align 8
  %51 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %5, align 8
  %52 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %45
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %43, %23, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

declare dso_local i32 @iosf_mbi_write(i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
