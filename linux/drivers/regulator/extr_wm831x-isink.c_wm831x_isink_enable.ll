; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-isink.c_wm831x_isink_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-isink.c_wm831x_isink_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_isink = type { i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_CS1_ENA = common dso_local global i32 0, align 4
@WM831X_CS1_DRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm831x_isink_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_isink_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm831x_isink*, align 8
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.wm831x_isink* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.wm831x_isink* %8, %struct.wm831x_isink** %4, align 8
  %9 = load %struct.wm831x_isink*, %struct.wm831x_isink** %4, align 8
  %10 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %9, i32 0, i32 1
  %11 = load %struct.wm831x*, %struct.wm831x** %10, align 8
  store %struct.wm831x* %11, %struct.wm831x** %5, align 8
  %12 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %13 = load %struct.wm831x_isink*, %struct.wm831x_isink** %4, align 8
  %14 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @WM831X_CS1_ENA, align 4
  %17 = load i32, i32* @WM831X_CS1_ENA, align 4
  %18 = call i32 @wm831x_set_bits(%struct.wm831x* %12, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %1
  %24 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %25 = load %struct.wm831x_isink*, %struct.wm831x_isink** %4, align 8
  %26 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @WM831X_CS1_DRIVE, align 4
  %29 = load i32, i32* @WM831X_CS1_DRIVE, align 4
  %30 = call i32 @wm831x_set_bits(%struct.wm831x* %24, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %35 = load %struct.wm831x_isink*, %struct.wm831x_isink** %4, align 8
  %36 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WM831X_CS1_ENA, align 4
  %39 = call i32 @wm831x_set_bits(%struct.wm831x* %34, i32 %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %33, %23
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %21
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.wm831x_isink* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
