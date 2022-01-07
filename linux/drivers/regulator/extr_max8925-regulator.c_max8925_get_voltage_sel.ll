; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8925-regulator.c_max8925_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.max8925_regulator_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max8925_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.max8925_regulator_info*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.max8925_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.max8925_regulator_info* %9, %struct.max8925_regulator_info** %4, align 8
  %10 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %4, align 8
  %11 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.max8925_regulator_info*, %struct.max8925_regulator_info** %4, align 8
  %14 = getelementptr inbounds %struct.max8925_regulator_info, %struct.max8925_regulator_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @max8925_reg_read(i32 %12, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %23 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %6, align 1
  %29 = load i32, i32* %7, align 4
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %5, align 1
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %21, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.max8925_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @max8925_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
