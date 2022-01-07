; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_fsl_mx6_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_fsl_mx6_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dim2_hdm = type { i64, i8*, i64, i8* }

@.str = private unnamed_addr constant [4 x i8] c"mlb\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to get mlb clock\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"clk_prepare_enable failed\00", align 1
@CLK_2048FS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"pll8_mlb\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"unable to get mlb pll clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_mx6_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_mx6_enable(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dim2_hdm*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.dim2_hdm* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.dim2_hdm* %7, %struct.dim2_hdm** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i8* @devm_clk_get(i32* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %12 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %11, i32 0, i32 3
  store i8* %10, i8** %12, align 8
  %13 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %14 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %13, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @IS_ERR_OR_NULL(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %74

24:                                               ; preds = %1
  %25 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %26 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @clk_prepare_enable(i8* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %74

36:                                               ; preds = %24
  %37 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %38 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CLK_2048FS, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %36
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i8* @devm_clk_get(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %47 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %49 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR_OR_NULL(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %58 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @clk_disable_unprepare(i8* %59)
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %74

63:                                               ; preds = %42
  %64 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %65 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 56
  %68 = call i32 @writel(i32 2184, i64 %67)
  %69 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %70 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @clk_prepare_enable(i8* %71)
  br label %73

73:                                               ; preds = %63, %36
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %53, %31, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.dim2_hdm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
