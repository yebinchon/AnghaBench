; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_list_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_list_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9052_regulator = type { %struct.TYPE_2__*, %struct.da9052_regulator_info* }
%struct.TYPE_2__ = type { i64 }
%struct.da9052_regulator_info = type { i32, i32, i32 }

@DA9052_ID_BUCK4 = common dso_local global i32 0, align 4
@DA9052 = common dso_local global i64 0, align 8
@DA9052_BUCK_PERI_REG_MAP_UPTO_3uV = common dso_local global i32 0, align 4
@DA9052_BUCK_PERI_3uV_STEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @da9052_list_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_list_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9052_regulator*, align 8
  %7 = alloca %struct.da9052_regulator_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.da9052_regulator* %11, %struct.da9052_regulator** %6, align 8
  %12 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %13 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %12, i32 0, i32 1
  %14 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %13, align 8
  store %struct.da9052_regulator_info* %14, %struct.da9052_regulator_info** %7, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = call i32 @rdev_get_id(%struct.regulator_dev* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @DA9052_ID_BUCK4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %2
  %21 = load %struct.da9052_regulator*, %struct.da9052_regulator** %6, align 8
  %22 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DA9052, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DA9052_BUCK_PERI_REG_MAP_UPTO_3uV, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32, i32* @DA9052_BUCK_PERI_REG_MAP_UPTO_3uV, align 4
  %34 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %7, align 8
  %35 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul i32 %33, %36
  %38 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %7, align 8
  %39 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %37, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @DA9052_BUCK_PERI_REG_MAP_UPTO_3uV, align 4
  %44 = sub i32 %42, %43
  %45 = load i32, i32* @DA9052_BUCK_PERI_3uV_STEP, align 4
  %46 = mul i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %59

49:                                               ; preds = %28, %20, %2
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %7, align 8
  %52 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %50, %53
  %55 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %7, align 8
  %56 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %54, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %49, %32
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %7, align 8
  %62 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
