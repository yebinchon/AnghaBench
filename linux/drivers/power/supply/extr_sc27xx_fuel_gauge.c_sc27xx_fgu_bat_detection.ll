; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_bat_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_bat_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to get gpio state\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sc27xx_fgu_bat_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_bat_detection(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sc27xx_fgu_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sc27xx_fgu_data*
  store %struct.sc27xx_fgu_data* %9, %struct.sc27xx_fgu_data** %6, align 8
  %10 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %6, align 8
  %11 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %6, align 8
  %14 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_get_value_cansleep(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %6, align 8
  %21 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %6, align 8
  %25 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %24, i32 0, i32 2
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @IRQ_RETVAL(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %6, align 8
  %36 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %6, align 8
  %38 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %37, i32 0, i32 2
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %6, align 8
  %41 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @power_supply_changed(i32 %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %29, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
