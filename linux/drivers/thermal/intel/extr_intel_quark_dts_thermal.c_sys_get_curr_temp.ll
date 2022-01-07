; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_sys_get_curr_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_sys_get_curr_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }

@dts_update_mutex = common dso_local global i32 0, align 4
@QRK_MBI_UNIT_RMU = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@QRK_DTS_REG_OFFSET_TEMP = common dso_local global i32 0, align 4
@QRK_DTS_OFFSET_TEMP = common dso_local global i32 0, align 4
@QRK_DTS_MASK_TEMP = common dso_local global i32 0, align 4
@QRK_DTS_TEMP_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @sys_get_curr_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_get_curr_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 @mutex_lock(i32* @dts_update_mutex)
  %9 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %10 = load i32, i32* @MBI_REG_READ, align 4
  %11 = load i32, i32* @QRK_DTS_REG_OFFSET_TEMP, align 4
  %12 = call i32 @iosf_mbi_read(i32 %9, i32 %10, i32 %11, i32* %6)
  store i32 %12, i32* %7, align 4
  %13 = call i32 @mutex_unlock(i32* @dts_update_mutex)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @QRK_DTS_OFFSET_TEMP, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* @QRK_DTS_MASK_TEMP, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @QRK_DTS_TEMP_BASE, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
