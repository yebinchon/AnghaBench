; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-zynqmp.c_zynqmp_reset_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-zynqmp.c_zynqmp_reset_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.zynqmp_reset_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64, i32)* }

@ZYNQMP_RESET_ID = common dso_local global i64 0, align 8
@PM_RESET_ACTION_PULSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @zynqmp_reset_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_reset_reset(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zynqmp_reset_data*, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %7 = call %struct.zynqmp_reset_data* @to_zynqmp_reset_data(%struct.reset_controller_dev* %6)
  store %struct.zynqmp_reset_data* %7, %struct.zynqmp_reset_data** %5, align 8
  %8 = load %struct.zynqmp_reset_data*, %struct.zynqmp_reset_data** %5, align 8
  %9 = getelementptr inbounds %struct.zynqmp_reset_data, %struct.zynqmp_reset_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i64, i32)*, i32 (i64, i32)** %11, align 8
  %13 = load i64, i64* @ZYNQMP_RESET_ID, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %13, %14
  %16 = load i32, i32* @PM_RESET_ACTION_PULSE, align 4
  %17 = call i32 %12(i64 %15, i32 %16)
  ret i32 %17
}

declare dso_local %struct.zynqmp_reset_data* @to_zynqmp_reset_data(%struct.reset_controller_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
