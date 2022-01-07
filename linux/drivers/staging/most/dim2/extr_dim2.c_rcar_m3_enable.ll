; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_rcar_m3_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_rcar_m3_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dim2_hdm = type { i64, i64, i32 }

@CLK_512FS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"clk_prepare_enable failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_m3_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_m3_enable(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dim2_hdm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.dim2_hdm* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.dim2_hdm* %8, %struct.dim2_hdm** %4, align 8
  %9 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %10 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CLK_512FS, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @devm_clk_get(i32* %16, i32* null)
  %18 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %19 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %21 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %30 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %1
  %34 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %35 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_prepare_enable(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %67

45:                                               ; preds = %33
  %46 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %47 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1536
  %50 = call i32 @writel(i32 4, i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %53 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1540
  %56 = call i32 @writel(i32 %51, i64 %55)
  %57 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %58 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1280
  %61 = call i32 @writel(i32 3, i64 %60)
  %62 = load %struct.dim2_hdm*, %struct.dim2_hdm** %4, align 8
  %63 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1288
  %66 = call i32 @writel(i32 196354, i64 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %45, %40, %25
  %68 = load i32, i32* %2, align 4
  ret i32 %68
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
