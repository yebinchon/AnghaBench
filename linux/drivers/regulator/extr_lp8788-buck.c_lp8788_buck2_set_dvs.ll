; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck2_set_dvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck2_set_dvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_buck = type { i64 }
%struct.lp8788_buck2_dvs = type { i32, i32* }

@DVS_LOW = common dso_local global i32 0, align 4
@DVS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp8788_buck*)* @lp8788_buck2_set_dvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp8788_buck2_set_dvs(%struct.lp8788_buck* %0) #0 {
  %2 = alloca %struct.lp8788_buck*, align 8
  %3 = alloca %struct.lp8788_buck2_dvs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lp8788_buck* %0, %struct.lp8788_buck** %2, align 8
  %6 = load %struct.lp8788_buck*, %struct.lp8788_buck** %2, align 8
  %7 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.lp8788_buck2_dvs*
  store %struct.lp8788_buck2_dvs* %9, %struct.lp8788_buck2_dvs** %3, align 8
  %10 = load %struct.lp8788_buck2_dvs*, %struct.lp8788_buck2_dvs** %3, align 8
  %11 = icmp ne %struct.lp8788_buck2_dvs* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.lp8788_buck2_dvs*, %struct.lp8788_buck2_dvs** %3, align 8
  %15 = getelementptr inbounds %struct.lp8788_buck2_dvs, %struct.lp8788_buck2_dvs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %29 [
    i32 131, label %17
    i32 130, label %20
    i32 129, label %23
    i32 128, label %26
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @DVS_LOW, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @DVS_LOW, align 4
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %13
  %21 = load i32, i32* @DVS_HIGH, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @DVS_LOW, align 4
  store i32 %22, i32* %5, align 4
  br label %30

23:                                               ; preds = %13
  %24 = load i32, i32* @DVS_LOW, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @DVS_HIGH, align 4
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %13
  %27 = load i32, i32* @DVS_HIGH, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @DVS_HIGH, align 4
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %13
  br label %62

30:                                               ; preds = %26, %23, %20, %17
  %31 = load %struct.lp8788_buck2_dvs*, %struct.lp8788_buck2_dvs** %3, align 8
  %32 = getelementptr inbounds %struct.lp8788_buck2_dvs, %struct.lp8788_buck2_dvs* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @gpio_is_valid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.lp8788_buck2_dvs*, %struct.lp8788_buck2_dvs** %3, align 8
  %40 = getelementptr inbounds %struct.lp8788_buck2_dvs, %struct.lp8788_buck2_dvs* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @gpio_set_value(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load %struct.lp8788_buck2_dvs*, %struct.lp8788_buck2_dvs** %3, align 8
  %48 = getelementptr inbounds %struct.lp8788_buck2_dvs, %struct.lp8788_buck2_dvs* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @gpio_is_valid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.lp8788_buck2_dvs*, %struct.lp8788_buck2_dvs** %3, align 8
  %56 = getelementptr inbounds %struct.lp8788_buck2_dvs, %struct.lp8788_buck2_dvs* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @gpio_set_value(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %12, %29, %54, %46
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
