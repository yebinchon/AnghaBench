; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_list_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_list_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.regulation_constraints* }
%struct.regulation_constraints = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"regulator constraints null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @ab8500_ext_list_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_ext_list_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulation_constraints*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 0
  %9 = load %struct.regulation_constraints*, %struct.regulation_constraints** %8, align 8
  store %struct.regulation_constraints* %9, %struct.regulation_constraints** %6, align 8
  %10 = load %struct.regulation_constraints*, %struct.regulation_constraints** %6, align 8
  %11 = icmp eq %struct.regulation_constraints* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call i32 @rdev_get_dev(%struct.regulator_dev* %13)
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.regulation_constraints*, %struct.regulation_constraints** %6, align 8
  %20 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.regulation_constraints*, %struct.regulation_constraints** %6, align 8
  %25 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.regulation_constraints*, %struct.regulation_constraints** %6, align 8
  %30 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.regulation_constraints*, %struct.regulation_constraints** %6, align 8
  %33 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.regulation_constraints*, %struct.regulation_constraints** %6, align 8
  %38 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %23, %18
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %36, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
