; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_turn_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_turn_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_vibrator_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gb_bundle* }
%struct.gb_bundle = type { i32 }

@GB_VIBRATOR_TYPE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_vibrator_device*)* @turn_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turn_off(%struct.gb_vibrator_device* %0) #0 {
  %2 = alloca %struct.gb_vibrator_device*, align 8
  %3 = alloca %struct.gb_bundle*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_vibrator_device* %0, %struct.gb_vibrator_device** %2, align 8
  %5 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %2, align 8
  %6 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.gb_bundle*, %struct.gb_bundle** %8, align 8
  store %struct.gb_bundle* %9, %struct.gb_bundle** %3, align 8
  %10 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %2, align 8
  %11 = getelementptr inbounds %struct.gb_vibrator_device, %struct.gb_vibrator_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* @GB_VIBRATOR_TYPE_OFF, align 4
  %14 = call i32 @gb_operation_sync(%struct.TYPE_2__* %12, i32 %13, i32* null, i32 0, i32* null, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.gb_bundle*, %struct.gb_bundle** %3, align 8
  %16 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %15)
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @gb_operation_sync(%struct.TYPE_2__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
