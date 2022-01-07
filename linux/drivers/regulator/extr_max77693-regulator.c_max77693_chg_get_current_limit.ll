; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77693-regulator.c_max77693_chg_get_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77693-regulator.c_max77693_chg_get_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.chg_reg_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max77693_chg_get_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_chg_get_current_limit(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.chg_reg_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call %struct.chg_reg_data* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.chg_reg_data* %12, %struct.chg_reg_data** %4, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %19 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.chg_reg_data*, %struct.chg_reg_data** %4, align 8
  %27 = getelementptr inbounds %struct.chg_reg_data, %struct.chg_reg_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_read(i32 %25, i32 %28, i32* %7)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %1
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.chg_reg_data*, %struct.chg_reg_data** %4, align 8
  %37 = getelementptr inbounds %struct.chg_reg_data, %struct.chg_reg_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.chg_reg_data*, %struct.chg_reg_data** %4, align 8
  %42 = getelementptr inbounds %struct.chg_reg_data, %struct.chg_reg_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ule i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %52

46:                                               ; preds = %34
  %47 = load %struct.chg_reg_data*, %struct.chg_reg_data** %4, align 8
  %48 = getelementptr inbounds %struct.chg_reg_data, %struct.chg_reg_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.chg_reg_data*, %struct.chg_reg_data** %4, align 8
  %55 = getelementptr inbounds %struct.chg_reg_data, %struct.chg_reg_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = mul i32 %56, %57
  %59 = add i32 %53, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %63, %32
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.chg_reg_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
