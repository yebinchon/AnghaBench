; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_get_hardware_vsel_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_get_hardware_vsel_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.regulator_ops* }
%struct.regulator_ops = type { i64 }

@regulator_set_voltage_sel_regmap = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_get_hardware_vsel_register(%struct.regulator* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.regulator_ops*, align 8
  store %struct.regulator* %0, %struct.regulator** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.regulator*, %struct.regulator** %5, align 8
  %11 = getelementptr inbounds %struct.regulator, %struct.regulator* %10, i32 0, i32 0
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %11, align 8
  store %struct.regulator_dev* %12, %struct.regulator_dev** %8, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load %struct.regulator_ops*, %struct.regulator_ops** %16, align 8
  store %struct.regulator_ops* %17, %struct.regulator_ops** %9, align 8
  %18 = load %struct.regulator_ops*, %struct.regulator_ops** %9, align 8
  %19 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @regulator_set_voltage_sel_regmap, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %3
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %28 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %34 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %26, %23
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
