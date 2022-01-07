; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_init_coupling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_init_coupling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.regulator_dev** }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to get coupler: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @regulator_init_coupling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_init_coupling(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load i32, i32* @CONFIG_OF, align 4
  %8 = call i32 @IS_ENABLED(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call i32 @of_get_n_coupled(%struct.regulator_dev* %12)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %10
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 24, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.regulator_dev** @kzalloc(i64 %19, i32 %20)
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %23 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store %struct.regulator_dev** %21, %struct.regulator_dev*** %24, align 8
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load %struct.regulator_dev**, %struct.regulator_dev*** %27, align 8
  %29 = icmp ne %struct.regulator_dev** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %83

33:                                               ; preds = %14
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load %struct.regulator_dev**, %struct.regulator_dev*** %37, align 8
  %39 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %38, i64 0
  store %struct.regulator_dev* %34, %struct.regulator_dev** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %43 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %46 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %83

53:                                               ; preds = %33
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %55 = call i32 @of_check_coupling_data(%struct.regulator_dev* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @EPERM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %83

60:                                               ; preds = %53
  %61 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %62 = call i32 @regulator_find_coupler(%struct.regulator_dev* %61)
  %63 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %64 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %67 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  %73 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %74 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @rdev_err(%struct.regulator_dev* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %72, %57, %52, %30
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @of_get_n_coupled(%struct.regulator_dev*) #1

declare dso_local %struct.regulator_dev** @kzalloc(i64, i32) #1

declare dso_local i32 @of_check_coupling_data(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_find_coupler(%struct.regulator_dev*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
