; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_ena_gpio_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_ena_gpio_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.regulator_enable_gpio* }
%struct.regulator_enable_gpio = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @regulator_ena_gpio_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_ena_gpio_ctrl(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_enable_gpio*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 0
  %9 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %8, align 8
  store %struct.regulator_enable_gpio* %9, %struct.regulator_enable_gpio** %6, align 8
  %10 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %6, align 8
  %11 = icmp ne %struct.regulator_enable_gpio* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %6, align 8
  %20 = getelementptr inbounds %struct.regulator_enable_gpio, %struct.regulator_enable_gpio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %6, align 8
  %25 = getelementptr inbounds %struct.regulator_enable_gpio, %struct.regulator_enable_gpio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpiod_set_value_cansleep(i32 %26, i32 1)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %6, align 8
  %30 = getelementptr inbounds %struct.regulator_enable_gpio, %struct.regulator_enable_gpio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %56

33:                                               ; preds = %15
  %34 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %6, align 8
  %35 = getelementptr inbounds %struct.regulator_enable_gpio, %struct.regulator_enable_gpio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %6, align 8
  %40 = getelementptr inbounds %struct.regulator_enable_gpio, %struct.regulator_enable_gpio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %57

43:                                               ; preds = %33
  %44 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %6, align 8
  %45 = getelementptr inbounds %struct.regulator_enable_gpio, %struct.regulator_enable_gpio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %6, align 8
  %50 = getelementptr inbounds %struct.regulator_enable_gpio, %struct.regulator_enable_gpio* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gpiod_set_value_cansleep(i32 %51, i32 0)
  %53 = load %struct.regulator_enable_gpio*, %struct.regulator_enable_gpio** %6, align 8
  %54 = getelementptr inbounds %struct.regulator_enable_gpio, %struct.regulator_enable_gpio* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %43
  br label %56

56:                                               ; preds = %55, %28
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %38, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
