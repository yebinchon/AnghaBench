; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_measure_vbatt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_measure_vbatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_battery_info = type { i32 }

@PM8607_VBAT_MEAS1 = common dso_local global i32 0, align 4
@PM8607_LDO5 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm860x_battery_info*, i32, i32*)* @measure_vbatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @measure_vbatt(%struct.pm860x_battery_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm860x_battery_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.pm860x_battery_info* %0, %struct.pm860x_battery_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %71 [
    i32 129, label %11
    i32 128, label %24
  ]

11:                                               ; preds = %3
  %12 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %13 = load i32, i32* @PM8607_VBAT_MEAS1, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @measure_12bit_voltage(%struct.pm860x_battery_info* %12, i32 %13, i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %75

20:                                               ; preds = %11
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 3
  store i32 %23, i32* %21, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %5, align 8
  %26 = getelementptr inbounds %struct.pm860x_battery_info, %struct.pm860x_battery_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PM8607_LDO5, align 4
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %30 = call i32 @pm860x_bulk_read(i32 %27, i32 %28, i32 5, i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %75

35:                                               ; preds = %24
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = ashr i32 %38, 6
  %40 = shl i32 %39, 10
  %41 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = ashr i32 %43, 6
  %45 = shl i32 %44, 8
  %46 = or i32 %40, %45
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = ashr i32 %49, 6
  %51 = shl i32 %50, 6
  %52 = or i32 %46, %51
  %53 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = ashr i32 %55, 6
  %57 = shl i32 %56, 4
  %58 = or i32 %52, %57
  %59 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 4
  %63 = or i32 %58, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = mul nsw i32 %66, 27
  %68 = mul nsw i32 %67, 25
  %69 = ashr i32 %68, 9
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %74

71:                                               ; preds = %3
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %35, %20
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %71, %33, %18
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @measure_12bit_voltage(%struct.pm860x_battery_info*, i32, i32*) #1

declare dso_local i32 @pm860x_bulk_read(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
