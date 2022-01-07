; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_regulator_set_suspend_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_regulator_set_suspend_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.s2mps11_info = type { i32, i32 }

@S2MPS14_ENABLE_SUSPEND = common dso_local global i32 0, align 4
@S2MPU02_DISABLE_SUSPEND = common dso_local global i32 0, align 4
@S2MPU02_ENABLE_SUSPEND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @s2mps11_regulator_set_suspend_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mps11_regulator_set_suspend_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s2mps11_info*, align 8
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.s2mps11_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.s2mps11_info* %10, %struct.s2mps11_info** %7, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.s2mps11_info*, %struct.s2mps11_info** %7, align 8
  %14 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %35 [
    i32 141, label %16
    i32 136, label %22
    i32 135, label %22
    i32 133, label %28
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %19 [
    i32 140, label %18
    i32 139, label %18
    i32 138, label %18
    i32 137, label %18
  ]

18:                                               ; preds = %16, %16, %16, %16
  store i32 0, i32* %2, align 4
  br label %83

19:                                               ; preds = %16
  %20 = load i32, i32* @S2MPS14_ENABLE_SUSPEND, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19
  br label %38

22:                                               ; preds = %1, %1
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %25 [
    i32 134, label %24
  ]

24:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %83

25:                                               ; preds = %22
  %26 = load i32, i32* @S2MPS14_ENABLE_SUSPEND, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25
  br label %38

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %32 [
    i32 131, label %30
    i32 130, label %30
    i32 129, label %30
    i32 128, label %30
    i32 132, label %30
  ]

30:                                               ; preds = %28, %28, %28, %28, %28
  %31 = load i32, i32* @S2MPU02_DISABLE_SUSPEND, align 4
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @S2MPU02_ENABLE_SUSPEND, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %83

38:                                               ; preds = %34, %27, %21
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %40 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %43 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regmap_read(i32 %41, i32 %46, i32* %5)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %83

52:                                               ; preds = %38
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.s2mps11_info*, %struct.s2mps11_info** %7, align 8
  %55 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @set_bit(i32 %53, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %60 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %58, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %83

67:                                               ; preds = %52
  %68 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %69 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %72 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %77 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @regmap_update_bits(i32 %70, i32 %75, i32 %80, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %67, %66, %50, %35, %24, %18
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.s2mps11_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
