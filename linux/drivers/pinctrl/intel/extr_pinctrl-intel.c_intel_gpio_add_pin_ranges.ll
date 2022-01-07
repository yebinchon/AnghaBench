; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_add_pin_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_add_pin_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pinctrl = type { i32, i32 }
%struct.intel_community = type { i32, %struct.intel_padgroup* }
%struct.intel_padgroup = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pinctrl*, %struct.intel_community*)* @intel_gpio_add_pin_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gpio_add_pin_ranges(%struct.intel_pinctrl* %0, %struct.intel_community* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pinctrl*, align 8
  %5 = alloca %struct.intel_community*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_padgroup*, align 8
  store %struct.intel_pinctrl* %0, %struct.intel_pinctrl** %4, align 8
  store %struct.intel_community* %1, %struct.intel_community** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %49, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %12 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %9
  %16 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %17 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %16, i32 0, i32 1
  %18 = load %struct.intel_padgroup*, %struct.intel_padgroup** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %18, i64 %20
  store %struct.intel_padgroup* %21, %struct.intel_padgroup** %8, align 8
  %22 = load %struct.intel_padgroup*, %struct.intel_padgroup** %8, align 8
  %23 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %49

27:                                               ; preds = %15
  %28 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %29 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %28, i32 0, i32 1
  %30 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %31 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_name(i32 %32)
  %34 = load %struct.intel_padgroup*, %struct.intel_padgroup** %8, align 8
  %35 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.intel_padgroup*, %struct.intel_padgroup** %8, align 8
  %38 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.intel_padgroup*, %struct.intel_padgroup** %8, align 8
  %41 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gpiochip_add_pin_range(i32* %29, i32 %33, i64 %36, i32 %39, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %54

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %9

52:                                               ; preds = %9
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @gpiochip_add_pin_range(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
