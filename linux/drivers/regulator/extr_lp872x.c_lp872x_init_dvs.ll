; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_init_dvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_init_dvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp872x = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lp872x_dvs* }
%struct.lp872x_dvs = type { i32, i32 }

@LP8720_EXT_DVS_M = common dso_local global i32 0, align 4
@LP8725_DVS1_M = common dso_local global i32 0, align 4
@LP8725_DVS2_M = common dso_local global i32 0, align 4
@LP8720_DEFAULT_DVS = common dso_local global i32 0, align 4
@LP8725_DEFAULT_DVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"LP872X DVS\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gpio request err: %d\0A\00", align 1
@LP872X_GENERAL_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp872x*)* @lp872x_init_dvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp872x_init_dvs(%struct.lp872x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp872x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp872x_dvs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  store %struct.lp872x* %0, %struct.lp872x** %3, align 8
  %10 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %11 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %16 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.lp872x_dvs*, %struct.lp872x_dvs** %18, align 8
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi %struct.lp872x_dvs* [ %19, %14 ], [ null, %20 ]
  store %struct.lp872x_dvs* %22, %struct.lp872x_dvs** %6, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* @LP8720_EXT_DVS_M, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @LP8725_DVS1_M, align 4
  %27 = load i32, i32* @LP8725_DVS2_M, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %30 = load i32, i32* @LP8720_DEFAULT_DVS, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @LP8725_DEFAULT_DVS, align 4
  store i32 %32, i32* %31, align 4
  %33 = load %struct.lp872x_dvs*, %struct.lp872x_dvs** %6, align 8
  %34 = icmp ne %struct.lp872x_dvs* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %67

36:                                               ; preds = %21
  %37 = load %struct.lp872x_dvs*, %struct.lp872x_dvs** %6, align 8
  %38 = getelementptr inbounds %struct.lp872x_dvs, %struct.lp872x_dvs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @gpio_is_valid(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %67

44:                                               ; preds = %36
  %45 = load %struct.lp872x_dvs*, %struct.lp872x_dvs** %6, align 8
  %46 = getelementptr inbounds %struct.lp872x_dvs, %struct.lp872x_dvs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %49 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @devm_gpio_request_one(i32 %50, i32 %51, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %44
  %57 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %58 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %81

63:                                               ; preds = %44
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %66 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %2, align 4
  br label %81

67:                                               ; preds = %43, %35
  %68 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %69 = load i32, i32* @LP872X_GENERAL_CFG, align 4
  %70 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %71 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.lp872x*, %struct.lp872x** %3, align 8
  %76 = getelementptr inbounds %struct.lp872x, %struct.lp872x* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @lp872x_update_bits(%struct.lp872x* %68, i32 %69, i32 %74, i32 %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %67, %63, %56
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(i32, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @lp872x_update_bits(%struct.lp872x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
