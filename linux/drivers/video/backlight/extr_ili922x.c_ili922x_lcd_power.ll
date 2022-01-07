; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_lcd_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili922x.c_ili922x_lcd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili922x = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ili922x*, i32)* @ili922x_lcd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili922x_lcd_power(%struct.ili922x* %0, i32 %1) #0 {
  %3 = alloca %struct.ili922x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ili922x* %0, %struct.ili922x** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @POWER_IS_ON(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.ili922x*, %struct.ili922x** %3, align 8
  %11 = getelementptr inbounds %struct.ili922x, %struct.ili922x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @POWER_IS_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load %struct.ili922x*, %struct.ili922x** %3, align 8
  %17 = getelementptr inbounds %struct.ili922x, %struct.ili922x* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ili922x_poweron(i32 %18)
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %9, %2
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @POWER_IS_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load %struct.ili922x*, %struct.ili922x** %3, align 8
  %26 = getelementptr inbounds %struct.ili922x, %struct.ili922x* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @POWER_IS_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.ili922x*, %struct.ili922x** %3, align 8
  %32 = getelementptr inbounds %struct.ili922x, %struct.ili922x* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ili922x_poweroff(i32 %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %24, %20
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.ili922x*, %struct.ili922x** %3, align 8
  %42 = getelementptr inbounds %struct.ili922x, %struct.ili922x* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @POWER_IS_ON(i32) #1

declare dso_local i32 @ili922x_poweron(i32) #1

declare dso_local i32 @ili922x_poweroff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
