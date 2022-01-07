; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.max77802_regulator_prv = type { i32* }

@MAX77802_OFF_PWRREQ = common dso_local global i32 0, align 4
@MAX77802_OPMODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max77802_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77802_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.max77802_regulator_prv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %7 = call %struct.max77802_regulator_prv* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.max77802_regulator_prv* %7, %struct.max77802_regulator_prv** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @max77802_get_opmode_shift(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %3, align 8
  %13 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX77802_OFF_PWRREQ, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @MAX77802_OPMODE_NORMAL, align 4
  %23 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %3, align 8
  %24 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %31 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %34 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %39 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %3, align 8
  %44 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @regmap_update_bits(i32 %32, i32 %37, i32 %42, i32 %51)
  ret i32 %52
}

declare dso_local %struct.max77802_regulator_prv* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max77802_get_opmode_shift(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
