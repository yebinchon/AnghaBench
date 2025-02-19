; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_collie_battery.c_collie_read_bat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_collie_battery.c_collie_read_bat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collie_bat = type { i64, i64, i32 }

@bat_lock = common dso_local global i32 0, align 4
@ucb = common dso_local global i32 0, align 4
@UCB_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.collie_bat*)* @collie_read_bat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @collie_read_bat(%struct.collie_bat* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.collie_bat*, align 8
  %4 = alloca i64, align 8
  store %struct.collie_bat* %0, %struct.collie_bat** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.collie_bat*, %struct.collie_bat** %3, align 8
  %6 = getelementptr inbounds %struct.collie_bat, %struct.collie_bat* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.collie_bat*, %struct.collie_bat** %3, align 8
  %11 = getelementptr inbounds %struct.collie_bat, %struct.collie_bat* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i64 0, i64* %2, align 8
  br label %44

15:                                               ; preds = %9
  %16 = call i32 @mutex_lock(i32* @bat_lock)
  %17 = load %struct.collie_bat*, %struct.collie_bat** %3, align 8
  %18 = getelementptr inbounds %struct.collie_bat, %struct.collie_bat* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @gpio_set_value(i64 %19, i32 1)
  %21 = call i32 @msleep(i32 5)
  %22 = load i32, i32* @ucb, align 4
  %23 = call i32 @ucb1x00_adc_enable(i32 %22)
  %24 = load i32, i32* @ucb, align 4
  %25 = load %struct.collie_bat*, %struct.collie_bat** %3, align 8
  %26 = getelementptr inbounds %struct.collie_bat, %struct.collie_bat* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UCB_SYNC, align 4
  %29 = call i64 @ucb1x00_adc_read(i32 %24, i32 %27, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i32, i32* @ucb, align 4
  %31 = call i32 @ucb1x00_adc_disable(i32 %30)
  %32 = load %struct.collie_bat*, %struct.collie_bat** %3, align 8
  %33 = getelementptr inbounds %struct.collie_bat, %struct.collie_bat* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @gpio_set_value(i64 %34, i32 0)
  %36 = call i32 @mutex_unlock(i32* @bat_lock)
  %37 = load i64, i64* %4, align 8
  %38 = mul i64 %37, 1000000
  %39 = load %struct.collie_bat*, %struct.collie_bat** %3, align 8
  %40 = getelementptr inbounds %struct.collie_bat, %struct.collie_bat* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = udiv i64 %38, %41
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  store i64 %43, i64* %2, align 8
  br label %44

44:                                               ; preds = %15, %14
  %45 = load i64, i64* %2, align 8
  ret i64 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ucb1x00_adc_enable(i32) #1

declare dso_local i64 @ucb1x00_adc_read(i32, i32, i32) #1

declare dso_local i32 @ucb1x00_adc_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
