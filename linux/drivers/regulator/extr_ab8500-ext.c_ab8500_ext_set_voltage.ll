; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.regulation_constraints* }
%struct.regulation_constraints = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"No regulator constraints\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Requested min %duV max %duV != constrained min %duV max %duV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32*)* @ab8500_ext_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_ext_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.regulation_constraints*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %12 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %11, i32 0, i32 0
  %13 = load %struct.regulation_constraints*, %struct.regulation_constraints** %12, align 8
  store %struct.regulation_constraints* %13, %struct.regulation_constraints** %10, align 8
  %14 = load %struct.regulation_constraints*, %struct.regulation_constraints** %10, align 8
  %15 = icmp ne %struct.regulation_constraints* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %18 = call i32 @rdev_get_dev(%struct.regulator_dev* %17)
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %49

22:                                               ; preds = %4
  %23 = load %struct.regulation_constraints*, %struct.regulation_constraints** %10, align 8
  %24 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.regulation_constraints*, %struct.regulation_constraints** %10, align 8
  %30 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %49

35:                                               ; preds = %28, %22
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %37 = call i32 @rdev_get_dev(%struct.regulator_dev* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.regulation_constraints*, %struct.regulation_constraints** %10, align 8
  %41 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.regulation_constraints*, %struct.regulation_constraints** %10, align 8
  %44 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %42, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %35, %34, %16
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
