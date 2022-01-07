; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck1_set_dvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck1_set_dvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_buck = type { i64 }
%struct.lp8788_buck1_dvs = type { i64, i32 }

@DVS_SEL_V0 = common dso_local global i64 0, align 8
@DVS_LOW = common dso_local global i32 0, align 4
@DVS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp8788_buck*)* @lp8788_buck1_set_dvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp8788_buck1_set_dvs(%struct.lp8788_buck* %0) #0 {
  %2 = alloca %struct.lp8788_buck*, align 8
  %3 = alloca %struct.lp8788_buck1_dvs*, align 8
  %4 = alloca i32, align 4
  store %struct.lp8788_buck* %0, %struct.lp8788_buck** %2, align 8
  %5 = load %struct.lp8788_buck*, %struct.lp8788_buck** %2, align 8
  %6 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.lp8788_buck1_dvs*
  store %struct.lp8788_buck1_dvs* %8, %struct.lp8788_buck1_dvs** %3, align 8
  %9 = load %struct.lp8788_buck1_dvs*, %struct.lp8788_buck1_dvs** %3, align 8
  %10 = icmp ne %struct.lp8788_buck1_dvs* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.lp8788_buck1_dvs*, %struct.lp8788_buck1_dvs** %3, align 8
  %14 = getelementptr inbounds %struct.lp8788_buck1_dvs, %struct.lp8788_buck1_dvs* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DVS_SEL_V0, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @DVS_LOW, align 4
  br label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @DVS_HIGH, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %4, align 4
  %24 = load %struct.lp8788_buck1_dvs*, %struct.lp8788_buck1_dvs** %3, align 8
  %25 = getelementptr inbounds %struct.lp8788_buck1_dvs, %struct.lp8788_buck1_dvs* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @gpio_is_valid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.lp8788_buck1_dvs*, %struct.lp8788_buck1_dvs** %3, align 8
  %31 = getelementptr inbounds %struct.lp8788_buck1_dvs, %struct.lp8788_buck1_dvs* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @gpio_set_value(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %11, %29, %22
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
