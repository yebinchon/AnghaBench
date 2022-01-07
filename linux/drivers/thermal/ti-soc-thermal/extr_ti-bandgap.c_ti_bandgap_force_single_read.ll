; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_force_single_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_force_single_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.temp_sensor_registers* }
%struct.temp_sensor_registers = type { i32, i32 }

@MODE_CONFIG = common dso_local global i32 0, align 4
@bgap_mode_ctrl = common dso_local global i32 0, align 4
@mode_ctrl_mask = common dso_local global i32 0, align 4
@temp_sensor_ctrl = common dso_local global i32 0, align 4
@bgap_soc_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_bandgap*, i32)* @ti_bandgap_force_single_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_bandgap_force_single_read(%struct.ti_bandgap* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_bandgap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.temp_sensor_registers*, align 8
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1000, i32* %5, align 4
  %7 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %8 = load i32, i32* @MODE_CONFIG, align 4
  %9 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @bgap_mode_ctrl, align 4
  %15 = load i32, i32* @mode_ctrl_mask, align 4
  %16 = call i32 @RMW_BITS(%struct.ti_bandgap* %12, i32 %13, i32 %14, i32 %15, i32 0)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @temp_sensor_ctrl, align 4
  %21 = load i32, i32* @bgap_soc_mask, align 4
  %22 = call i32 @RMW_BITS(%struct.ti_bandgap* %18, i32 %19, i32 %20, i32 %21, i32 1)
  %23 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %24 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %31, align 8
  store %struct.temp_sensor_registers* %32, %struct.temp_sensor_registers** %6, align 8
  br label %33

33:                                               ; preds = %49, %17
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %39 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %6, align 8
  %40 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ti_bandgap_readl(%struct.ti_bandgap* %38, i32 %41)
  %43 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %6, align 8
  %44 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %50

49:                                               ; preds = %37
  br label %33

50:                                               ; preds = %48, %33
  %51 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @temp_sensor_ctrl, align 4
  %54 = load i32, i32* @bgap_soc_mask, align 4
  %55 = call i32 @RMW_BITS(%struct.ti_bandgap* %51, i32 %52, i32 %53, i32 %54, i32 0)
  store i32 1000, i32* %5, align 4
  br label %56

56:                                               ; preds = %72, %50
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.ti_bandgap*, %struct.ti_bandgap** %3, align 8
  %62 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %6, align 8
  %63 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ti_bandgap_readl(%struct.ti_bandgap* %61, i32 %64)
  %66 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %6, align 8
  %67 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %60
  br label %73

72:                                               ; preds = %60
  br label %56

73:                                               ; preds = %71, %56
  ret i32 0
}

declare dso_local i64 @TI_BANDGAP_HAS(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @RMW_BITS(%struct.ti_bandgap*, i32, i32, i32, i32) #1

declare dso_local i32 @ti_bandgap_readl(%struct.ti_bandgap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
