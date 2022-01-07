; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_alloc_soc_dts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_alloc_soc_dts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_sensor_entry = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QRK_MBI_UNIT_RMU = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@QRK_DTS_REG_OFFSET_LOCK = common dso_local global i32 0, align 4
@QRK_DTS_LOCK_BIT = common dso_local global i32 0, align 4
@QRK_DTS_WR_MASK_CLR = common dso_local global i32 0, align 4
@QRK_DTS_WR_MASK_SET = common dso_local global i32 0, align 4
@QRK_DTS_REG_OFFSET_ENABLE = common dso_local global i32 0, align 4
@QRK_DTS_REG_OFFSET_PTPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"quark_dts\00", align 1
@QRK_MAX_DTS_TRIPS = common dso_local global i32 0, align 4
@tzone_ops = common dso_local global i32 0, align 4
@polling_delay = common dso_local global i32 0, align 4
@dts_update_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.soc_sensor_entry* ()* @alloc_soc_dts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.soc_sensor_entry* @alloc_soc_dts() #0 {
  %1 = alloca %struct.soc_sensor_entry*, align 8
  %2 = alloca %struct.soc_sensor_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.soc_sensor_entry* @kzalloc(i32 16, i32 %6)
  store %struct.soc_sensor_entry* %7, %struct.soc_sensor_entry** %2, align 8
  %8 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %9 = icmp ne %struct.soc_sensor_entry* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.soc_sensor_entry* @ERR_PTR(i32 %14)
  store %struct.soc_sensor_entry* %15, %struct.soc_sensor_entry** %1, align 8
  br label %103

16:                                               ; preds = %0
  %17 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %18 = load i32, i32* @MBI_REG_READ, align 4
  %19 = load i32, i32* @QRK_DTS_REG_OFFSET_LOCK, align 4
  %20 = call i32 @iosf_mbi_read(i32 %17, i32 %18, i32 %19, i32* %4)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %98

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @QRK_DTS_LOCK_BIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %31 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @QRK_DTS_WR_MASK_CLR, align 4
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %24
  %34 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %35 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @QRK_DTS_WR_MASK_SET, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %39 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %44 = load i32, i32* @MBI_REG_READ, align 4
  %45 = load i32, i32* @QRK_DTS_REG_OFFSET_ENABLE, align 4
  %46 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %47 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %46, i32 0, i32 1
  %48 = call i32 @iosf_mbi_read(i32 %43, i32 %44, i32 %45, i32* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %98

52:                                               ; preds = %42
  %53 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %54 = load i32, i32* @MBI_REG_READ, align 4
  %55 = load i32, i32* @QRK_DTS_REG_OFFSET_PTPS, align 4
  %56 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %57 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %56, i32 0, i32 2
  %58 = call i32 @iosf_mbi_read(i32 %53, i32 %54, i32 %55, i32* %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %98

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* @QRK_MAX_DTS_TRIPS, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %67 = load i32, i32* @polling_delay, align 4
  %68 = call i32 @thermal_zone_device_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, %struct.soc_sensor_entry* %66, i32* @tzone_ops, i32* null, i32 0, i32 %67)
  %69 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %70 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %72 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %78 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %3, align 4
  br label %98

81:                                               ; preds = %63
  %82 = call i32 @mutex_lock(i32* @dts_update_mutex)
  %83 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %84 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @soc_dts_enable(i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = call i32 @mutex_unlock(i32* @dts_update_mutex)
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %93

91:                                               ; preds = %81
  %92 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  store %struct.soc_sensor_entry* %92, %struct.soc_sensor_entry** %1, align 8
  br label %103

93:                                               ; preds = %90
  %94 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %95 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @thermal_zone_device_unregister(i32 %96)
  br label %98

98:                                               ; preds = %93, %76, %61, %51, %23
  %99 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %2, align 8
  %100 = call i32 @kfree(%struct.soc_sensor_entry* %99)
  %101 = load i32, i32* %3, align 4
  %102 = call %struct.soc_sensor_entry* @ERR_PTR(i32 %101)
  store %struct.soc_sensor_entry* %102, %struct.soc_sensor_entry** %1, align 8
  br label %103

103:                                              ; preds = %98, %91, %10
  %104 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %1, align 8
  ret %struct.soc_sensor_entry* %104
}

declare dso_local %struct.soc_sensor_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.soc_sensor_entry* @ERR_PTR(i32) #1

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

declare dso_local i32 @thermal_zone_device_register(i8*, i32, i32, %struct.soc_sensor_entry*, i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc_dts_enable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @thermal_zone_device_unregister(i32) #1

declare dso_local i32 @kfree(%struct.soc_sensor_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
