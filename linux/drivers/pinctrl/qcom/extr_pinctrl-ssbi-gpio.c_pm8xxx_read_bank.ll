; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_read_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_read_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_gpio = type { i32, i32 }
%struct.pm8xxx_pin_data = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to select bank %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to read register %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8xxx_gpio*, %struct.pm8xxx_pin_data*, i32)* @pm8xxx_read_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_read_bank(%struct.pm8xxx_gpio* %0, %struct.pm8xxx_pin_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8xxx_gpio*, align 8
  %6 = alloca %struct.pm8xxx_pin_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pm8xxx_gpio* %0, %struct.pm8xxx_gpio** %5, align 8
  store %struct.pm8xxx_pin_data* %1, %struct.pm8xxx_pin_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = shl i32 %10, 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %5, align 8
  %13 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %16 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @regmap_write(i32 %14, i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %5, align 8
  %24 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %48

29:                                               ; preds = %3
  %30 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %5, align 8
  %31 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %6, align 8
  %34 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regmap_read(i32 %32, i32 %35, i32* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %5, align 8
  %41 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %48

46:                                               ; preds = %29
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %39, %22
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
