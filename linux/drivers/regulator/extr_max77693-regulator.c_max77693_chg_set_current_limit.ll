; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77693-regulator.c_max77693_chg_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77693-regulator.c_max77693_chg_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.chg_reg_data = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @max77693_chg_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_chg_set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.chg_reg_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call %struct.chg_reg_data* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.chg_reg_data* %12, %struct.chg_reg_data** %8, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %28, %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.chg_reg_data*, %struct.chg_reg_data** %8, align 8
  %21 = getelementptr inbounds %struct.chg_reg_data, %struct.chg_reg_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add i32 %19, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.chg_reg_data*, %struct.chg_reg_data** %8, align 8
  %34 = getelementptr inbounds %struct.chg_reg_data, %struct.chg_reg_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add i32 %32, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %60

44:                                               ; preds = %31
  %45 = load %struct.chg_reg_data*, %struct.chg_reg_data** %8, align 8
  %46 = getelementptr inbounds %struct.chg_reg_data, %struct.chg_reg_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %53 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.chg_reg_data*, %struct.chg_reg_data** %8, align 8
  %56 = getelementptr inbounds %struct.chg_reg_data, %struct.chg_reg_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @regmap_write(i32 %54, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %44, %41
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.chg_reg_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
