; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_get_voltage_proper_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8997-regulator.c_max8997_get_voltage_proper_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voltage_map_desc = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.voltage_map_desc*, i32, i32)* @max8997_get_voltage_proper_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_get_voltage_proper_val(%struct.voltage_map_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.voltage_map_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.voltage_map_desc* %0, %struct.voltage_map_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %5, align 8
  %10 = icmp eq %struct.voltage_map_desc* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %65

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %5, align 8
  %17 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %5, align 8
  %23 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %14
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %65

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %5, align 8
  %32 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %5, align 8
  %37 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %5, align 8
  %42 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %5, align 8
  %46 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DIV_ROUND_UP(i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %5, align 8
  %50 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.voltage_map_desc*, %struct.voltage_map_desc** %5, align 8
  %53 = getelementptr inbounds %struct.voltage_map_desc, %struct.voltage_map_desc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %51, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %39
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %39
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %60, %26, %11
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
