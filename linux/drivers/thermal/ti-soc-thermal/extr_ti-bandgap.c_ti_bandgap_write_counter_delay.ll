; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_write_counter_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_write_counter_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Delay %d ms is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bgap_mask_ctrl = common dso_local global i32 0, align 4
@mask_counter_delay_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_bandgap*, i32, i32)* @ti_bandgap_write_counter_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_bandgap_write_counter_delay(%struct.ti_bandgap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_bandgap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %16 [
    i32 0, label %10
    i32 1, label %11
    i32 10, label %12
    i32 100, label %13
    i32 250, label %14
    i32 500, label %15
  ]

10:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %24

11:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %24

12:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %24

13:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  br label %24

14:                                               ; preds = %3
  store i32 4, i32* %8, align 4
  br label %24

15:                                               ; preds = %3
  store i32 5, i32* %8, align 4
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %18 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %37

24:                                               ; preds = %15, %14, %13, %12, %11, %10
  %25 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %26 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @bgap_mask_ctrl, align 4
  %31 = load i32, i32* @mask_counter_delay_mask, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @RMW_BITS(%struct.ti_bandgap* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %35 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %24, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @RMW_BITS(%struct.ti_bandgap*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
