; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_count_voltages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_count_voltages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { %struct.regulator*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_count_voltages(%struct.regulator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator*, align 8
  %4 = alloca %struct.regulator_dev*, align 8
  store %struct.regulator* %0, %struct.regulator** %3, align 8
  %5 = load %struct.regulator*, %struct.regulator** %3, align 8
  %6 = getelementptr inbounds %struct.regulator, %struct.regulator* %5, i32 0, i32 0
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  store %struct.regulator_dev* %7, %struct.regulator_dev** %4, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %22 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %27 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %26, i32 0, i32 0
  %28 = load %struct.regulator*, %struct.regulator** %27, align 8
  %29 = icmp ne %struct.regulator* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %25
  %34 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %35 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %34, i32 0, i32 0
  %36 = load %struct.regulator*, %struct.regulator** %35, align 8
  %37 = call i32 @regulator_count_voltages(%struct.regulator* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %30, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
