; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_write_update_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_write_update_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { i32 }

@COUNTER = common dso_local global i32 0, align 4
@COUNTER_DELAY = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_bandgap_write_update_interval(%struct.ti_bandgap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ti_bandgap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ti_bandgap_validate(%struct.ti_bandgap* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %42

14:                                               ; preds = %3
  %15 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %16 = load i32, i32* @COUNTER, align 4
  %17 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %21 = load i32, i32* @COUNTER_DELAY, align 4
  %22 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %42

27:                                               ; preds = %19, %14
  %28 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %29 = load i32, i32* @COUNTER, align 4
  %30 = call i64 @TI_BANDGAP_HAS(%struct.ti_bandgap* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ti_bandgap_write_counter(%struct.ti_bandgap* %33, i32 %34, i32 %35)
  br label %42

37:                                               ; preds = %27
  %38 = load %struct.ti_bandgap*, %struct.ti_bandgap** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ti_bandgap_write_counter_delay(%struct.ti_bandgap* %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %32, %24, %13
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @ti_bandgap_validate(%struct.ti_bandgap*, i32) #1

declare dso_local i64 @TI_BANDGAP_HAS(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @ti_bandgap_write_counter(%struct.ti_bandgap*, i32, i32) #1

declare dso_local i32 @ti_bandgap_write_counter_delay(%struct.ti_bandgap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
