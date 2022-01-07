; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_set_temp_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_set_temp_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i32, i32 }

@PM8607_GPADC1_HIGHTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TEMP_HIGHTH : min: %d, 0x%x\0A\00", align 1
@PM8607_GPADC1_LOWTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"TEMP_LOWTH:max : %d, 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm860x_battery_info*, i32, i32)* @set_temp_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_temp_threshold(%struct.pm860x_battery_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pm860x_battery_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pm860x_battery_info* %0, %struct.pm860x_battery_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 8
  %14 = sdiv i32 %13, 1800
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %17 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PM8607_GPADC1_HIGHTH, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pm860x_reg_write(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %23 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 255, i32* %7, align 4
  br label %35

31:                                               ; preds = %15
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 8
  %34 = sdiv i32 %33, 1800
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %30
  %36 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %37 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PM8607_GPADC1_LOWTH, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @pm860x_reg_write(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %4, align 8
  %43 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @pm860x_reg_write(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
