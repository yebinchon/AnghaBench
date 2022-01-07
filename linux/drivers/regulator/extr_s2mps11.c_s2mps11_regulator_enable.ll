; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.s2mps11_info = type { i32, i32, i32* }

@S2MPS14_ENABLE_SUSPEND = common dso_local global i32 0, align 4
@S2MPS14_ENABLE_EXT_CONTROL = common dso_local global i32 0, align 4
@S2MPU02_ENABLE_SUSPEND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @s2mps11_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mps11_regulator_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.s2mps11_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.s2mps11_info* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.s2mps11_info* %8, %struct.s2mps11_info** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.s2mps11_info*, %struct.s2mps11_info** %4, align 8
  %12 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %74 [
    i32 131, label %14
    i32 130, label %30
    i32 129, label %30
    i32 128, label %58
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.s2mps11_info*, %struct.s2mps11_info** %4, align 8
  %17 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @S2MPS14_ENABLE_SUSPEND, align 4
  store i32 %22, i32* %6, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %23, %21
  br label %77

30:                                               ; preds = %1, %1
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.s2mps11_info*, %struct.s2mps11_info** %4, align 8
  %33 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @test_bit(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @S2MPS14_ENABLE_SUSPEND, align 4
  store i32 %38, i32* %6, align 4
  br label %57

39:                                               ; preds = %30
  %40 = load %struct.s2mps11_info*, %struct.s2mps11_info** %4, align 8
  %41 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @S2MPS14_ENABLE_EXT_CONTROL, align 4
  store i32 %49, i32* %6, align 4
  br label %56

50:                                               ; preds = %39
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %52 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %50, %48
  br label %57

57:                                               ; preds = %56, %37
  br label %77

58:                                               ; preds = %1
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.s2mps11_info*, %struct.s2mps11_info** %4, align 8
  %61 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @test_bit(i32 %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @S2MPU02_ENABLE_SUSPEND, align 4
  store i32 %66, i32* %6, align 4
  br label %73

67:                                               ; preds = %58
  %68 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %69 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %67, %65
  br label %77

74:                                               ; preds = %1
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %93

77:                                               ; preds = %73, %57, %29
  %78 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %79 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %82 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %87 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @regmap_update_bits(i32 %80, i32 %85, i32 %90, i32 %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %77, %74
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.s2mps11_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
