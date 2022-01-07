; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_tosa_battery.c_tosa_read_bat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_tosa_battery.c_tosa_read_bat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tosa_bat = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@bat_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tosa_bat*)* @tosa_read_bat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tosa_read_bat(%struct.tosa_bat* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tosa_bat*, align 8
  %4 = alloca i64, align 8
  store %struct.tosa_bat* %0, %struct.tosa_bat** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %6 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %11 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i64 0, i64* %2, align 8
  br label %45

15:                                               ; preds = %9
  %16 = call i32 @mutex_lock(i32* @bat_lock)
  %17 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %18 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @gpio_set_value(i64 %19, i32 1)
  %21 = call i32 @msleep(i32 5)
  %22 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %23 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_get_drvdata(i32 %27)
  %29 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %30 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @wm97xx_read_aux_adc(i32 %28, i64 %31)
  store i64 %32, i64* %4, align 8
  %33 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %34 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @gpio_set_value(i64 %35, i32 0)
  %37 = call i32 @mutex_unlock(i32* @bat_lock)
  %38 = load i64, i64* %4, align 8
  %39 = mul i64 %38, 1000000
  %40 = load %struct.tosa_bat*, %struct.tosa_bat** %3, align 8
  %41 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = udiv i64 %39, %42
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %15, %14
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @wm97xx_read_aux_adc(i32, i64) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
