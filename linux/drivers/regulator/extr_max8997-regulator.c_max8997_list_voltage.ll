; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_list_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_list_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voltage_map_desc = type { i32, i32, i32 }
%struct.regulator_dev = type { i32 }

@reg_voltage_map = common dso_local global %struct.voltage_map_desc** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8997_list_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_list_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.voltage_map_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.voltage_map_desc**, %struct.voltage_map_desc*** @reg_voltage_map, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.voltage_map_desc** %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %13
  %22 = load %struct.voltage_map_desc**, %struct.voltage_map_desc*** @reg_voltage_map, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.voltage_map_desc*, %struct.voltage_map_desc** %22, i64 %24
  %26 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %25, align 8
  store %struct.voltage_map_desc* %26, %struct.voltage_map_desc** %6, align 8
  %27 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %6, align 8
  %28 = icmp eq %struct.voltage_map_desc* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %21
  %33 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %6, align 8
  %34 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %6, align 8
  %37 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul i32 %38, %39
  %41 = add i32 %35, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %6, align 8
  %44 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %32
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %47, %29, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.voltage_map_desc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
