; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.q6v5_wcss = type { i32, i32* }
%struct.rproc = type { %struct.q6v5_wcss* }

@q6v5_wcss_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"IPQ8074/q6_fw.mdt\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate rproc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WCSS_CRASH_REASON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @q6v5_wcss_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_wcss_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.q6v5_wcss*, align 8
  %5 = alloca %struct.rproc*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rproc* @rproc_alloc(i32* %8, i32 %11, i32* @q6v5_wcss_ops, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 16)
  store %struct.rproc* %12, %struct.rproc** %5, align 8
  %13 = load %struct.rproc*, %struct.rproc** %5, align 8
  %14 = icmp ne %struct.rproc* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.rproc*, %struct.rproc** %5, align 8
  %23 = getelementptr inbounds %struct.rproc, %struct.rproc* %22, i32 0, i32 0
  %24 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %23, align 8
  store %struct.q6v5_wcss* %24, %struct.q6v5_wcss** %4, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %28 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i32 @q6v5_wcss_init_mmio(%struct.q6v5_wcss* %29, %struct.platform_device* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %67

35:                                               ; preds = %21
  %36 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %37 = call i32 @q6v5_alloc_memory_region(%struct.q6v5_wcss* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %67

41:                                               ; preds = %35
  %42 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %43 = call i32 @q6v5_wcss_init_reset(%struct.q6v5_wcss* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %67

47:                                               ; preds = %41
  %48 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %49 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %48, i32 0, i32 0
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.rproc*, %struct.rproc** %5, align 8
  %52 = load i32, i32* @WCSS_CRASH_REASON, align 4
  %53 = call i32 @qcom_q6v5_init(i32* %49, %struct.platform_device* %50, %struct.rproc* %51, i32 %52, i32* null)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %67

57:                                               ; preds = %47
  %58 = load %struct.rproc*, %struct.rproc** %5, align 8
  %59 = call i32 @rproc_add(%struct.rproc* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %67

63:                                               ; preds = %57
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.rproc*, %struct.rproc** %5, align 8
  %66 = call i32 @platform_set_drvdata(%struct.platform_device* %64, %struct.rproc* %65)
  store i32 0, i32* %2, align 4
  br label %71

67:                                               ; preds = %62, %56, %46, %40, %34
  %68 = load %struct.rproc*, %struct.rproc** %5, align 8
  %69 = call i32 @rproc_free(%struct.rproc* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %63, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.rproc* @rproc_alloc(i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @q6v5_wcss_init_mmio(%struct.q6v5_wcss*, %struct.platform_device*) #1

declare dso_local i32 @q6v5_alloc_memory_region(%struct.q6v5_wcss*) #1

declare dso_local i32 @q6v5_wcss_init_reset(%struct.q6v5_wcss*) #1

declare dso_local i32 @qcom_q6v5_init(i32*, %struct.platform_device*, %struct.rproc*, i32, i32*) #1

declare dso_local i32 @rproc_add(%struct.rproc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rproc*) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
