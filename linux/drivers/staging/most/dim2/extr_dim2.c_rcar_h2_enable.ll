; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_rcar_h2_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_rcar_h2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dim2_hdm = type { i64, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"clk_prepare_enable failed\00", align 1
@CLK_2048FS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_h2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_h2_enable(%struct.platform_device* %0) #0 {
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
  %10 = call i32 @devm_clk_get(i32* %9, i32* null)
  %11 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %12 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %14 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %23 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PTR_ERR(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %1
  %27 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %28 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %72

38:                                               ; preds = %26
  %39 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %40 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CLK_2048FS, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %46 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1536
  %49 = call i32 @writel(i32 3, i64 %48)
  %50 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %51 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 56
  %54 = call i32 @writel(i32 2184, i64 %53)
  br label %61

55:                                               ; preds = %38
  %56 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %57 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1536
  %60 = call i32 @writel(i32 4, i64 %59)
  br label %61

61:                                               ; preds = %55, %44
  %62 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %63 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1280
  %66 = call i32 @writel(i32 3, i64 %65)
  %67 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %68 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1288
  %71 = call i32 @writel(i32 196354, i64 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %61, %33, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.dim2_hdm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
