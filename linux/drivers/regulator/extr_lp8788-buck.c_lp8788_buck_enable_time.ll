; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck_enable_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck_enable_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp8788_buck = type { i32 }

@LP8788_BUCK1_TIMESTEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LP8788_STARTUP_TIME_M = common dso_local global i32 0, align 4
@LP8788_STARTUP_TIME_S = common dso_local global i32 0, align 4
@ENABLE_TIME_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @lp8788_buck_enable_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_buck_enable_time(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.lp8788_buck*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.lp8788_buck* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.lp8788_buck* %9, %struct.lp8788_buck** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @LP8788_BUCK1_TIMESTEP, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.lp8788_buck*, %struct.lp8788_buck** %4, align 8
  %16 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @lp8788_read_byte(i32 %17, i32 %18, i32* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @LP8788_STARTUP_TIME_M, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @LP8788_STARTUP_TIME_S, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @ENABLE_TIME_USEC, align 4
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.lp8788_buck* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i64 @lp8788_read_byte(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
