; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_enable_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_enable_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_enable_regmap(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %4 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %5 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %12 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %18 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %16
  br label %31

31:                                               ; preds = %30, %10
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %33 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %41 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @regmap_update_bits(i32 %34, i32 %39, i32 %44, i32 %45)
  ret i32 %46
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
