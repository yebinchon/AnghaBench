; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_find_regulator_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_find_regulator_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_init_data = type { i32 }
%struct.lp872x = type { i32, %struct.lp872x_platform_data* }
%struct.lp872x_platform_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.regulator_init_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regulator_init_data* (i32, %struct.lp872x*)* @lp872x_find_regulator_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regulator_init_data* @lp872x_find_regulator_init_data(i32 %0, %struct.lp872x* %1) #0 {
  %3 = alloca %struct.regulator_init_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lp872x*, align 8
  %6 = alloca %struct.lp872x_platform_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.lp872x* %1, %struct.lp872x** %5, align 8
  %8 = load %struct.lp872x*, %struct.lp872x** %5, align 8
  %9 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %8, i32 0, i32 1
  %10 = load %struct.lp872x_platform_data*, %struct.lp872x_platform_data** %9, align 8
  store %struct.lp872x_platform_data* %10, %struct.lp872x_platform_data** %6, align 8
  %11 = load %struct.lp872x_platform_data*, %struct.lp872x_platform_data** %6, align 8
  %12 = icmp ne %struct.lp872x_platform_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %3, align 8
  br label %46

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.lp872x*, %struct.lp872x** %5, align 8
  %18 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load %struct.lp872x_platform_data*, %struct.lp872x_platform_data** %6, align 8
  %23 = getelementptr inbounds %struct.lp872x_platform_data, %struct.lp872x_platform_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load %struct.lp872x_platform_data*, %struct.lp872x_platform_data** %6, align 8
  %34 = getelementptr inbounds %struct.lp872x_platform_data, %struct.lp872x_platform_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.regulator_init_data*, %struct.regulator_init_data** %39, align 8
  store %struct.regulator_init_data* %40, %struct.regulator_init_data** %3, align 8
  br label %46

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %15

45:                                               ; preds = %15
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %3, align 8
  br label %46

46:                                               ; preds = %45, %32, %13
  %47 = load %struct.regulator_init_data*, %struct.regulator_init_data** %3, align 8
  ret %struct.regulator_init_data* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
