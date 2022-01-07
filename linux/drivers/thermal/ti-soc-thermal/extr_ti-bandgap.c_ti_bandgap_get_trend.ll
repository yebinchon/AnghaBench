; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_get_trend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_get_trend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.temp_sensor_registers* }
%struct.temp_sensor_registers = type { i32, i32, i32 }

@HISTORY_BUFFER = common dso_local global i32 0, align 4
@FREEZE_BIT = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@bgap_mask_ctrl = common dso_local global i32 0, align 4
@mask_freeze_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"The temperatures are t1 = %d and t2 = %d and trend =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_bandgap_get_trend(%struct.ti_bandgap* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ti_bandgap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.temp_sensor_registers*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ti_bandgap_validate(%struct.ti_bandgap* %16, i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %124

22:                                               ; preds = %3
  %23 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %24 = load i32, i32* @HISTORY_BUFFER, align 4
  %25 = call i32 @TI_BANDGAP_HAS(%struct.ti_bandgap* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %29 = load i32, i32* @FREEZE_BIT, align 4
  %30 = call i32 @TI_BANDGAP_HAS(%struct.ti_bandgap* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %15, align 4
  br label %124

35:                                               ; preds = %27
  %36 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %37 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %40 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %47, align 8
  store %struct.temp_sensor_registers* %48, %struct.temp_sensor_registers** %7, align 8
  %49 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @bgap_mask_ctrl, align 4
  %52 = load i32, i32* @mask_freeze_mask, align 4
  %53 = call i32 @RMW_BITS(%struct.ti_bandgap* %49, i32 %50, i32 %51, i32 %52, i32 1)
  %54 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %7, align 8
  %55 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %7, align 8
  %58 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @ti_bandgap_readl(%struct.ti_bandgap* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %7, align 8
  %64 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ti_bandgap_readl(%struct.ti_bandgap* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.temp_sensor_registers*, %struct.temp_sensor_registers** %7, align 8
  %72 = getelementptr inbounds %struct.temp_sensor_registers, %struct.temp_sensor_registers* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ti_bandgap_adc_to_mcelsius(%struct.ti_bandgap* %76, i32 %77, i32* %12)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %35
  br label %115

82:                                               ; preds = %35
  %83 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ti_bandgap_adc_to_mcelsius(%struct.ti_bandgap* %83, i32 %84, i32* %13)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %115

89:                                               ; preds = %82
  %90 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @ti_bandgap_read_update_interval(%struct.ti_bandgap* %90, i32 %91, i32* %14)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %115

96:                                               ; preds = %89
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* %14, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %14, align 4
  %105 = sdiv i32 %103, %104
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %108 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dev_dbg(i32 %109, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %100, %95, %88, %81
  %116 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @bgap_mask_ctrl, align 4
  %119 = load i32, i32* @mask_freeze_mask, align 4
  %120 = call i32 @RMW_BITS(%struct.ti_bandgap* %116, i32 %117, i32 %118, i32 %119, i32 0)
  %121 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %122 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock(i32* %122)
  br label %124

124:                                              ; preds = %115, %32, %21
  %125 = load i32, i32* %15, align 4
  ret i32 %125
}

declare dso_local i32 @ti_bandgap_validate(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @TI_BANDGAP_HAS(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @RMW_BITS(%struct.ti_bandgap*, i32, i32, i32, i32) #1

declare dso_local i32 @ti_bandgap_readl(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @ti_bandgap_adc_to_mcelsius(%struct.ti_bandgap*, i32, i32*) #1

declare dso_local i32 @ti_bandgap_read_update_interval(%struct.ti_bandgap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
