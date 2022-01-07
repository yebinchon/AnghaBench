; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77686-regulator.c_max77686_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77686-regulator.c_max77686_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.max77686_data = type { i32* }

@MAX77686_OFF_PWRREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max77686_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.max77686_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %7 = call %struct.max77686_data* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.max77686_data* %7, %struct.max77686_data** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @max77686_get_opmode_shift(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.max77686_data*, %struct.max77686_data** %3, align 8
  %13 = getelementptr inbounds %struct.max77686_data, %struct.max77686_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX77686_OFF_PWRREQ, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.max77686_data*, %struct.max77686_data** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @max77686_map_normal_mode(%struct.max77686_data* %22, i32 %23)
  %25 = load %struct.max77686_data*, %struct.max77686_data** %3, align 8
  %26 = getelementptr inbounds %struct.max77686_data, %struct.max77686_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  br label %31

31:                                               ; preds = %21, %1
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %33 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %41 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.max77686_data*, %struct.max77686_data** %3, align 8
  %46 = getelementptr inbounds %struct.max77686_data, %struct.max77686_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @regmap_update_bits(i32 %34, i32 %39, i32 %44, i32 %53)
  ret i32 %54
}

declare dso_local %struct.max77686_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max77686_get_opmode_shift(i32) #1

declare dso_local i32 @max77686_map_normal_mode(%struct.max77686_data*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
