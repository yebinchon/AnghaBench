; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_regulator_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_regulator_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9055_regulator = type { i64, i32, %struct.da9055_regulator_info* }
%struct.da9055_regulator_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@NO_GPIO = common dso_local global i64 0, align 8
@DA9055_SEL_REG_A = common dso_local global i32 0, align 4
@DA9055_REGUALTOR_SET_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @da9055_regulator_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_regulator_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9055_regulator*, align 8
  %7 = alloca %struct.da9055_regulator_info*, align 8
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.da9055_regulator* %10, %struct.da9055_regulator** %6, align 8
  %11 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %12 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %11, i32 0, i32 2
  %13 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %12, align 8
  store %struct.da9055_regulator_info* %13, %struct.da9055_regulator_info** %7, align 8
  %14 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %15 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NO_GPIO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %21 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %24 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %28 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DA9055_SEL_REG_A, align 4
  %32 = call i32 @da9055_reg_update(i32 %22, i32 %26, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %102

37:                                               ; preds = %19
  %38 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %39 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %42 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %46 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @da9055_reg_update(i32 %40, i32 %44, i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %102

51:                                               ; preds = %2
  %52 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %53 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %56 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @da9055_reg_read(i32 %54, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %102

64:                                               ; preds = %51
  %65 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %66 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @DA9055_REGUALTOR_SET_A, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %64
  %75 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %76 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %79 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %83 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @da9055_reg_update(i32 %77, i32 %81, i32 %85, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %102

88:                                               ; preds = %64
  %89 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %90 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %93 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %7, align 8
  %97 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @da9055_reg_update(i32 %91, i32 %95, i32 %99, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %88, %74, %62, %37, %35
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @da9055_reg_update(i32, i32, i32, i32) #1

declare dso_local i32 @da9055_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
