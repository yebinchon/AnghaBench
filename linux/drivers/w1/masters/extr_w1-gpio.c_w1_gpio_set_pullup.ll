; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_w1-gpio.c_w1_gpio_set_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_w1-gpio.c_w1_gpio_set_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_gpio_platform_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @w1_gpio_set_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_gpio_set_pullup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.w1_gpio_platform_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.w1_gpio_platform_data*
  store %struct.w1_gpio_platform_data* %7, %struct.w1_gpio_platform_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %13 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %21 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpiod_set_raw_value(i32 %22, i32 1)
  %24 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %25 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @msleep(i32 %26)
  %28 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %29 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gpiod_set_value(i32 %30, i32 1)
  br label %32

32:                                               ; preds = %19, %14
  %33 = load %struct.w1_gpio_platform_data*, %struct.w1_gpio_platform_data** %5, align 8
  %34 = getelementptr inbounds %struct.w1_gpio_platform_data, %struct.w1_gpio_platform_data* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %10
  ret i32 0
}

declare dso_local i32 @gpiod_set_raw_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
