; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_intel_soc_dts_iosf_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_soc_dts_iosf.c_intel_soc_dts_iosf_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_soc_dts_sensors = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BT_MBI_UNIT_PMC = common dso_local global i32 0, align 4
@MBI_REG_READ = common dso_local global i32 0, align 4
@SOC_DTS_OFFSET_PTMC = common dso_local global i32 0, align 4
@SOC_DTS_PTMC_APIC_DEASSERT_BIT = common dso_local global i32 0, align 4
@MBI_REG_WRITE = common dso_local global i32 0, align 4
@SOC_DTS_OFFSET_PTTSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"status %d PTTSS %x\0A\00", align 1
@SOC_DTS_TRIP_MASK = common dso_local global i32 0, align 4
@SOC_MAX_DTS_SENSORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TZD update for zone %d\0A\00", align 1
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_soc_dts_iosf_interrupt_handler(%struct.intel_soc_dts_sensors* %0) #0 {
  %2 = alloca %struct.intel_soc_dts_sensors*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.intel_soc_dts_sensors* %0, %struct.intel_soc_dts_sensors** %2, align 8
  %8 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %2, align 8
  %9 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %13 = load i32, i32* @MBI_REG_READ, align 4
  %14 = load i32, i32* @SOC_DTS_OFFSET_PTMC, align 4
  %15 = call i32 @iosf_mbi_read(i32 %12, i32 %13, i32 %14, i32* %5)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @SOC_DTS_PTMC_APIC_DEASSERT_BIT, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %20 = load i32, i32* @MBI_REG_WRITE, align 4
  %21 = load i32, i32* @SOC_DTS_OFFSET_PTMC, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @iosf_mbi_write(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %25 = load i32, i32* @MBI_REG_READ, align 4
  %26 = load i32, i32* @SOC_DTS_OFFSET_PTTSS, align 4
  %27 = call i32 @iosf_mbi_read(i32 %24, i32 %25, i32 %26, i32* %3)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SOC_DTS_TRIP_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %1
  %36 = load i32, i32* @BT_MBI_UNIT_PMC, align 4
  %37 = load i32, i32* @MBI_REG_WRITE, align 4
  %38 = load i32, i32* @SOC_DTS_OFFSET_PTTSS, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @iosf_mbi_write(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %2, align 8
  %42 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %41, i32 0, i32 0
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %62, %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SOC_MAX_DTS_SENSORS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %2, align 8
  %53 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %61 = call i32 @thermal_zone_device_update(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %45

65:                                               ; preds = %45
  br label %71

66:                                               ; preds = %1
  %67 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %2, align 8
  %68 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %67, i32 0, i32 0
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %66, %65
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iosf_mbi_read(i32, i32, i32, i32*) #1

declare dso_local i32 @iosf_mbi_write(i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @thermal_zone_device_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
