; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.temp_sensor_registers* }
%struct.temp_sensor_registers = type { i32, i32, i32 }

@FREEZE_BIT = common dso_local global i32 0, align 4
@bgap_mask_ctrl = common dso_local global i32 0, align 4
@mask_freeze_mask = common dso_local global i32 0, align 4
@ERRATA_814 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_bandgap*, i32)* @ti_bandgap_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_bandgap_read_temp(%struct.ti_bandgap* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_bandgap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.temp_sensor_registers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %9 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %16, align 8
  store %struct.temp_sensor_registers* %17, %struct.temp_sensor_registers** %5, align 8
  %18 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %5, align 8
  %19 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %22 = load i32, i32* @FREEZE_BIT, align 4
  %23 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @bgap_mask_ctrl, align 4
  %29 = load i32, i32* @mask_freeze_mask, align 4
  %30 = call i32 @RMW_BITS(%struct.ti_bandgap* %26, i32 %27, i32 %28, i32 %29, i32 1)
  %31 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %5, align 8
  %32 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %25, %2
  %35 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %36 = load i32, i32* @ERRATA_814, align 4
  %37 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ti_errata814_bandgap_read_temp(%struct.ti_bandgap* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ti_bandgap_readl(%struct.ti_bandgap* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %5, align 8
  %49 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %54 = load i32, i32* @FREEZE_BIT, align 4
  %55 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @bgap_mask_ctrl, align 4
  %61 = load i32, i32* @mask_freeze_mask, align 4
  %62 = call i32 @RMW_BITS(%struct.ti_bandgap* %58, i32 %59, i32 %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %57, %47
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i64 @TI_BANDGAP_HAS(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @RMW_BITS(%struct.ti_bandgap*, i32, i32, i32, i32) #1

declare dso_local i32 @ti_errata814_bandgap_read_temp(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @ti_bandgap_readl(%struct.ti_bandgap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
