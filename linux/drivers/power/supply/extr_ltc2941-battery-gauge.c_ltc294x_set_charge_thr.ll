; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_set_charge_thr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_set_charge_thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc294x_info = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc294x_info*, i32, i32)* @ltc294x_set_charge_thr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc294x_set_charge_thr(%struct.ltc294x_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ltc294x_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.ltc294x_info* %0, %struct.ltc294x_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ltc294x_info*, %struct.ltc294x_info** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @convert_uAh_to_bin(%struct.ltc294x_info* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ltc294x_info*, %struct.ltc294x_info** %5, align 8
  %14 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 65535
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 65535
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %42

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @I16_MSB(i32 %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @I16_LSB(i32 %33)
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ltc294x_info*, %struct.ltc294x_info** %5, align 8
  %37 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %41 = call i32 @ltc294x_write_regs(i32 %38, i32 %39, i32* %40, i32 2)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %26
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @convert_uAh_to_bin(%struct.ltc294x_info*, i32) #1

declare dso_local i32 @I16_MSB(i32) #1

declare dso_local i32 @I16_LSB(i32) #1

declare dso_local i32 @ltc294x_write_regs(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
