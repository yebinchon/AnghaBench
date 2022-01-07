; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_voltage_buck_time_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_set_voltage_buck_time_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voltage_map_desc = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.max8997_data = type { i32, i32, i32, i32 }

@reg_voltage_map = common dso_local global %struct.voltage_map_desc** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @max8997_set_voltage_buck_time_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_set_voltage_buck_time_sel(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max8997_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.voltage_map_desc*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.max8997_data* %12, %struct.max8997_data** %8, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call i32 @rdev_get_id(%struct.regulator_dev* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.voltage_map_desc**, %struct.voltage_map_desc*** @reg_voltage_map, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.voltage_map_desc*, %struct.voltage_map_desc** %15, i64 %17
  %19 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %18, align 8
  store %struct.voltage_map_desc* %19, %struct.voltage_map_desc** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %47 [
    i32 131, label %26
    i32 130, label %33
    i32 128, label %40
  ]

26:                                               ; preds = %24
  %27 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %28 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %63

32:                                               ; preds = %26
  br label %47

33:                                               ; preds = %24
  %34 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %35 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %63

39:                                               ; preds = %33
  br label %47

40:                                               ; preds = %24
  %41 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %42 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %63

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %24, %46, %39, %32
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %62 [
    i32 131, label %49
    i32 130, label %49
    i32 129, label %49
    i32 128, label %49
  ]

49:                                               ; preds = %47, %47, %47, %47
  %50 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %10, align 8
  %51 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub i32 %53, %54
  %56 = mul i32 %52, %55
  %57 = load %struct.max8997_data*, %struct.max8997_data** %8, align 8
  %58 = getelementptr inbounds %struct.max8997_data, %struct.max8997_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 1000
  %61 = call i32 @DIV_ROUND_UP(i32 %56, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %49, %45, %38, %31, %23
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.max8997_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
