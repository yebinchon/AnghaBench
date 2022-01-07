; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_batt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_batt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i32, i32, i32, i32 }

@PM8607_STATUS_2 = common dso_local global i32 0, align 4
@STATUS2_BAT = common dso_local global i32 0, align 4
@PM860X_TEMP_TBAT = common dso_local global i32 0, align 4
@PM860X_TEMP_TINT = common dso_local global i32 0, align 4
@ccnt_data = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm860x_batt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_batt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pm860x_battery_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pm860x_battery_info*
  store %struct.pm860x_battery_info* %8, %struct.pm860x_battery_info** %5, align 8
  %9 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %10 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %13 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PM8607_STATUS_2, align 4
  %16 = call i32 @pm860x_reg_read(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @STATUS2_BAT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %23 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @PM860X_TEMP_TBAT, align 4
  %25 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %26 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %29 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @PM860X_TEMP_TINT, align 4
  %31 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %32 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %35 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %38 = call i32 @clear_ccnt(%struct.pm860x_battery_info* %37, i32* @ccnt_data)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm860x_reg_read(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clear_ccnt(%struct.pm860x_battery_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
