; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze100_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze100_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pfuze_chip = type { i32, i32, i32 }

@PFUZE3000_SWBST = common dso_local global i32 0, align 4
@PFUZE200_SWBST = common dso_local global i32 0, align 4
@PFUZE100_SWBST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ramp failed, err %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @pfuze100_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfuze100_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfuze_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call %struct.pfuze_chip* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.pfuze_chip* %11, %struct.pfuze_chip** %5, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.pfuze_chip*, %struct.pfuze_chip** %5, align 8
  %15 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %29 [
    i32 128, label %17
    i32 129, label %18
    i32 130, label %23
    i32 131, label %28
  ]

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PFUZE3000_SWBST, align 4
  %21 = icmp slt i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %7, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PFUZE200_SWBST, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %34

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %2, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PFUZE100_SWBST, align 4
  %32 = icmp slt i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %23, %18, %17
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = sdiv i32 12500, %38
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 1
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 3
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.pfuze_chip*, %struct.pfuze_chip** %5, align 8
  %46 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %49 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 4
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %54, 6
  %56 = call i32 @regmap_update_bits(i32 %47, i64 %53, i32 192, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %37
  %60 = load %struct.pfuze_chip*, %struct.pfuze_chip** %5, align 8
  %61 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %37
  br label %69

66:                                               ; preds = %34
  %67 = load i32, i32* @EACCES, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.pfuze_chip* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
