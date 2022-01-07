; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_update_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_quark_dts_thermal.c_update_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_sensor_entry = type { i64 }

@dts_update_mutex = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@QRK_MBI_UNIT_RMU = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@QRK_DTS_REG_OFFSET_PTPS = common dso_local global i32 0, align 4
@QRK_DTS_SAFE_TP_THRES = common dso_local global i32 0, align 4
@QRK_DTS_TEMP_BASE = common dso_local global i32 0, align 4
@QRK_DTS_MASK_TP_THRES = common dso_local global i32 0, align 4
@QRK_DTS_SHIFT_TP = common dso_local global i32 0, align 4
@MBI_REG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_sensor_entry*, i32, i32)* @update_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_trip_temp(%struct.soc_sensor_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.soc_sensor_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.soc_sensor_entry* %0, %struct.soc_sensor_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = call i32 @mutex_lock(i32* @dts_update_mutex)
  %12 = load %struct.soc_sensor_entry*, %struct.soc_sensor_entry** %4, align 8
  %13 = getelementptr inbounds %struct.soc_sensor_entry, %struct.soc_sensor_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %21 = load i32, i32* @MBI_REG_READ, align 4
  %22 = load i32, i32* @QRK_DTS_REG_OFFSET_PTPS, align 4
  %23 = call i32 @iosf_mbi_read(i32 %20, i32 %21, i32 %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %59

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @QRK_DTS_SAFE_TP_THRES, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @QRK_DTS_SAFE_TP_THRES, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @QRK_DTS_TEMP_BASE, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @QRK_DTS_MASK_TP_THRES, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @QRK_DTS_SHIFT_TP, align 4
  %41 = mul nsw i32 %39, %40
  %42 = shl i32 %38, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %37, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @QRK_DTS_MASK_TP_THRES, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @QRK_DTS_SHIFT_TP, align 4
  %50 = mul nsw i32 %48, %49
  %51 = shl i32 %47, %50
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @QRK_MBI_UNIT_RMU, align 4
  %55 = load i32, i32* @MBI_REG_WRITE, align 4
  %56 = load i32, i32* @QRK_DTS_REG_OFFSET_PTPS, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @iosf_mbi_write(i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %33, %26, %16
  %60 = call i32 @mutex_unlock(i32* @dts_update_mutex)
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

declare dso_local i32 @iosf_mbi_write(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
