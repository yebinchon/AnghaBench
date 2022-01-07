; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_machine_constraints_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_machine_constraints_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regulator_ops* }
%struct.regulator_ops = type { i32 (%struct.regulator_dev.0*, i32, i32)*, i32 }
%struct.regulator_dev.0 = type opaque
%struct.regulation_constraints = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid current constraints\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Operation of current configuration missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to set current constraint, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, %struct.regulation_constraints*)* @machine_constraints_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machine_constraints_current(%struct.regulator_dev* %0, %struct.regulation_constraints* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca %struct.regulation_constraints*, align 8
  %6 = alloca %struct.regulator_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store %struct.regulation_constraints* %1, %struct.regulation_constraints** %5, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.regulator_ops*, %struct.regulator_ops** %11, align 8
  store %struct.regulator_ops* %12, %struct.regulator_ops** %6, align 8
  %13 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %14 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %19 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %70

23:                                               ; preds = %17, %2
  %24 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %25 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %28 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %33 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %70

36:                                               ; preds = %23
  %37 = load %struct.regulator_ops*, %struct.regulator_ops** %6, align 8
  %38 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.regulator_dev.0*, i32, i32)*, i32 (%struct.regulator_dev.0*, i32, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.regulator_dev.0*, i32, i32)* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.regulator_ops*, %struct.regulator_ops** %6, align 8
  %43 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %48 = call i32 @rdev_warn(%struct.regulator_dev* %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %70

49:                                               ; preds = %41
  %50 = load %struct.regulator_ops*, %struct.regulator_ops** %6, align 8
  %51 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %50, i32 0, i32 0
  %52 = load i32 (%struct.regulator_dev.0*, i32, i32)*, i32 (%struct.regulator_dev.0*, i32, i32)** %51, align 8
  %53 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %54 = bitcast %struct.regulator_dev* %53 to %struct.regulator_dev.0*
  %55 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %56 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.regulation_constraints*, %struct.regulation_constraints** %5, align 8
  %59 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %52(%struct.regulator_dev.0* %54, i32 %57, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.regulator_dev*, i8*, ...) @rdev_err(%struct.regulator_dev* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %64, %46, %31, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*, ...) #1

declare dso_local i32 @rdev_warn(%struct.regulator_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
