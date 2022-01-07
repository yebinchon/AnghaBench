; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_hw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_hw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp872x = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"LP872X EN\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gpio request err: %d\0A\00", align 1
@LP8720 = common dso_local global i64 0, align 8
@LP8720_ENABLE_DELAY = common dso_local global double 0.000000e+00, align 8
@LP8725_ENABLE_DELAY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp872x*)* @lp872x_hw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp872x_hw_enable(%struct.lp872x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp872x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lp872x* %0, %struct.lp872x** %3, align 8
  %6 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %7 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %15 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @gpio_is_valid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %56

23:                                               ; preds = %13
  %24 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %25 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %29 = call i32 @devm_gpio_request_one(i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %34 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %23
  %40 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %41 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LP8720, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load double, double* @LP8720_ENABLE_DELAY, align 8
  %47 = load double, double* @LP8720_ENABLE_DELAY, align 8
  %48 = fmul double 1.500000e+00, %47
  %49 = call i32 @usleep_range(double %46, double %48)
  br label %55

50:                                               ; preds = %39
  %51 = load double, double* @LP8725_ENABLE_DELAY, align 8
  %52 = load double, double* @LP8725_ENABLE_DELAY, align 8
  %53 = fmul double 1.500000e+00, %52
  %54 = call i32 @usleep_range(double %51, double %53)
  br label %55

55:                                               ; preds = %50, %45
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %32, %22, %10
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(i32, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @usleep_range(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
