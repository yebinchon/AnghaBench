; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65218-regulator.c_tps65218_pmic_set_suspend_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65218-regulator.c_tps65218_pmic_set_suspend_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tps65218 = type { i64, i32* }

@TPS65218_DCDC_1 = common dso_local global i32 0, align 4
@TPS65218_LDO_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPS65218_DCDC_3 = common dso_local global i32 0, align 4
@TPS65218_REV_2_1 = common dso_local global i64 0, align 8
@TPS65218_PROTECT_L1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps65218_pmic_set_suspend_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65218_pmic_set_suspend_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.tps65218*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.tps65218* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.tps65218* %7, %struct.tps65218** %4, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TPS65218_DCDC_1, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TPS65218_LDO_1, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %76

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TPS65218_DCDC_3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %26 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TPS65218_REV_2_1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %76

31:                                               ; preds = %24, %20
  %32 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %33 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @TPS65218_DCDC_3, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %46 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 3, i32* %50, align 4
  br label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %76

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %57 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %58 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %63 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tps65218*, %struct.tps65218** %4, align 8
  %68 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TPS65218_PROTECT_L1, align 4
  %75 = call i32 @tps65218_set_bits(%struct.tps65218* %56, i32 %61, i32 %66, i32 %73, i32 %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %55, %51, %30, %17
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.tps65218* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps65218_set_bits(%struct.tps65218*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
