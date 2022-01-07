; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_read_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_read_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { i32 }

@MODE_CONFIG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_bandgap_read_temperature(%struct.ti_bandgap* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_bandgap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ti_bandgap_validate(%struct.ti_bandgap* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %19 = load i32, i32* @MODE_CONFIG, align 4
  %20 = call i32 @TI_BANDGAP_HAS(%struct.ti_bandgap* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ti_bandgap_force_single_read(%struct.ti_bandgap* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %17
  %32 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %33 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ti_bandgap_read_temp(%struct.ti_bandgap* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %39 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ti_bandgap_adc_to_mcelsius(%struct.ti_bandgap* %41, i32 %42, i32* %8)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %46, %28, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ti_bandgap_validate(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @TI_BANDGAP_HAS(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @ti_bandgap_force_single_read(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ti_bandgap_read_temp(%struct.ti_bandgap*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ti_bandgap_adc_to_mcelsius(%struct.ti_bandgap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
