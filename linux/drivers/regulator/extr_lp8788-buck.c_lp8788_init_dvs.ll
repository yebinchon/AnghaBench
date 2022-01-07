; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_init_dvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_init_dvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lp8788_buck = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lp8788_platform_data* }
%struct.lp8788_platform_data = type { i32, i32 }

@LP8788_BUCK1_DVS_SEL_M = common dso_local global i32 0, align 4
@LP8788_BUCK2_DVS_SEL_M = common dso_local global i32 0, align 4
@LP8788_BUCK1_DVS_PIN = common dso_local global i32 0, align 4
@LP8788_BUCK2_DVS_PIN = common dso_local global i32 0, align 4
@LP8788_BUCK1_DVS_I2C = common dso_local global i32 0, align 4
@LP8788_BUCK2_DVS_I2C = common dso_local global i32 0, align 4
@BUCK2 = common dso_local global i32 0, align 4
@BUCK1 = common dso_local global i32 0, align 4
@LP8788_BUCK_DVS_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.lp8788_buck*, i32)* @lp8788_init_dvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_init_dvs(%struct.platform_device* %0, %struct.lp8788_buck* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.lp8788_buck*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lp8788_platform_data*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.lp8788_buck* %1, %struct.lp8788_buck** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %13 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.lp8788_platform_data*, %struct.lp8788_platform_data** %15, align 8
  store %struct.lp8788_platform_data* %16, %struct.lp8788_platform_data** %8, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %18 = load i32, i32* @LP8788_BUCK1_DVS_SEL_M, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @LP8788_BUCK2_DVS_SEL_M, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %22 = load i32, i32* @LP8788_BUCK1_DVS_PIN, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @LP8788_BUCK2_DVS_PIN, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %26 = load i32, i32* @LP8788_BUCK1_DVS_I2C, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @LP8788_BUCK2_DVS_I2C, align 4
  store i32 %28, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BUCK2, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

33:                                               ; preds = %3
  %34 = load %struct.lp8788_platform_data*, %struct.lp8788_platform_data** %8, align 8
  %35 = icmp ne %struct.lp8788_platform_data* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %77

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BUCK1, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.lp8788_platform_data*, %struct.lp8788_platform_data** %8, align 8
  %43 = getelementptr inbounds %struct.lp8788_platform_data, %struct.lp8788_platform_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @BUCK2, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.lp8788_platform_data*, %struct.lp8788_platform_data** %8, align 8
  %52 = getelementptr inbounds %struct.lp8788_platform_data, %struct.lp8788_platform_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %41
  br label %77

56:                                               ; preds = %50, %46
  %57 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %58 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @lp8788_dvs_gpio_request(%struct.platform_device* %57, %struct.lp8788_buck* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %77

63:                                               ; preds = %56
  %64 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %65 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* @LP8788_BUCK_DVS_SEL, align 4
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @lp8788_update_bits(%struct.TYPE_2__* %66, i32 %67, i32 %71, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %91

77:                                               ; preds = %62, %55, %36
  %78 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %79 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* @LP8788_BUCK_DVS_SEL, align 4
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @lp8788_update_bits(%struct.TYPE_2__* %80, i32 %81, i32 %85, i32 %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %77, %63, %32
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @lp8788_dvs_gpio_request(%struct.platform_device*, %struct.lp8788_buck*, i32) #1

declare dso_local i32 @lp8788_update_bits(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
