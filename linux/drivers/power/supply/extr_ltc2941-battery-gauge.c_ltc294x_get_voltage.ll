; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc294x_info = type { i32, i32 }

@LTC294X_REG_VOLTAGE_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc294x_info*, i32*)* @ltc294x_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc294x_get_voltage(%struct.ltc294x_info* %0, i32* %1) #0 {
  %3 = alloca %struct.ltc294x_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.ltc294x_info* %0, %struct.ltc294x_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ltc294x_info*, %struct.ltc294x_info** %3, align 8
  %9 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LTC294X_REG_VOLTAGE_MSB, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %13 = call i32 @ltc294x_read_regs(i32 %10, i32 %11, i32* %12, i32 2)
  store i32 %13, i32* %5, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ltc294x_info*, %struct.ltc294x_info** %3, align 8
  %21 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %37 [
    i32 129, label %23
    i32 128, label %30
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 47200
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %26, 65535
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 500
  store i32 %29, i32* %7, align 4
  br label %44

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 56640
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %33, 65535
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 1250
  store i32 %36, i32* %7, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 60000
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sdiv i32 %40, 65535
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %42, 100
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %30, %23
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @ltc294x_read_regs(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
