; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_get_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc294x_info = type { i64, i32, i32 }

@LTC2943_REG_CURRENT_MSB = common dso_local global i32 0, align 4
@LTC2944_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc294x_info*, i32*)* @ltc294x_get_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc294x_get_current(%struct.ltc294x_info* %0, i32* %1) #0 {
  %3 = alloca %struct.ltc294x_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.ltc294x_info* %0, %struct.ltc294x_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ltc294x_info*, %struct.ltc294x_info** %3, align 8
  %9 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LTC2943_REG_CURRENT_MSB, align 4
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
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 32767
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ltc294x_info*, %struct.ltc294x_info** %3, align 8
  %23 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LTC2944_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 64000
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 60000
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ltc294x_info*, %struct.ltc294x_info** %3, align 8
  %36 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 32767
  %39 = sdiv i32 %34, %38
  %40 = mul nsw i32 1000, %39
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @ltc294x_read_regs(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
