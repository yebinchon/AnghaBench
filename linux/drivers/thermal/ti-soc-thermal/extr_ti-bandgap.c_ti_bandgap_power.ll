; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@POWER_SWITCH = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@temp_sensor_ctrl = common dso_local global i32 0, align 4
@bgap_tempsoff_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_bandgap*, i32)* @ti_bandgap_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_bandgap_power(%struct.ti_bandgap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_bandgap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %8 = load i32, i32* @POWER_SWITCH, align 4
  %9 = call i32 @TI_BANDGAP_HAS(%struct.ti_bandgap* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %18 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @temp_sensor_ctrl, align 4
  %27 = load i32, i32* @bgap_tempsoff_mask, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @RMW_BITS(%struct.ti_bandgap* %24, i32 %25, i32 %26, i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %15

36:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @TI_BANDGAP_HAS(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @RMW_BITS(%struct.ti_bandgap*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
