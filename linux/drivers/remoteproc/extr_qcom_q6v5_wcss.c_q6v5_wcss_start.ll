; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.q6v5_wcss* }
%struct.q6v5_wcss = type { i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"wcss_reset failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"wcss_q6_reset failed\0A\00", align 1
@TCSR_GLOBAL_CFG0 = common dso_local global i64 0, align 8
@TCSR_WCSS_CLK_MASK = common dso_local global i32 0, align 4
@TCSR_WCSS_CLK_ENABLE = common dso_local global i32 0, align 4
@TCSR_GLOBAL_CFG1 = common dso_local global i64 0, align 8
@Q6SS_RST_EVB = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"start timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @q6v5_wcss_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_wcss_start(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.q6v5_wcss*, align 8
  %5 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 1
  %8 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %7, align 8
  store %struct.q6v5_wcss* %8, %struct.q6v5_wcss** %4, align 8
  %9 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %10 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %9, i32 0, i32 3
  %11 = call i32 @qcom_q6v5_prepare(i32* %10)
  %12 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %13 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @reset_control_deassert(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %20 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %108

24:                                               ; preds = %1
  %25 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %26 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @reset_control_deassert(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %33 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %102

36:                                               ; preds = %24
  %37 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %38 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %41 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TCSR_GLOBAL_CFG0, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @TCSR_WCSS_CLK_MASK, align 4
  %46 = load i32, i32* @TCSR_WCSS_CLK_ENABLE, align 4
  %47 = call i32 @regmap_update_bits(i32 %39, i64 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %97

51:                                               ; preds = %36
  %52 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %53 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %56 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TCSR_GLOBAL_CFG1, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @regmap_update_bits(i32 %54, i64 %59, i32 1, i32 0)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %97

64:                                               ; preds = %51
  %65 = load %struct.rproc*, %struct.rproc** %3, align 8
  %66 = getelementptr inbounds %struct.rproc, %struct.rproc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 4
  %69 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %70 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @Q6SS_RST_EVB, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %76 = call i32 @q6v5_wcss_reset(%struct.q6v5_wcss* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %97

80:                                               ; preds = %64
  %81 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %82 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %81, i32 0, i32 3
  %83 = load i32, i32* @HZ, align 4
  %84 = mul nsw i32 5, %83
  %85 = call i32 @qcom_q6v5_wait_for_start(i32* %82, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %92 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %90, %80
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %108

97:                                               ; preds = %79, %63, %50
  %98 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %99 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @reset_control_assert(i32 %100)
  br label %102

102:                                              ; preds = %97, %31
  %103 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %4, align 8
  %104 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @reset_control_assert(i32 %105)
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %102, %95, %18
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @qcom_q6v5_prepare(i32*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @q6v5_wcss_reset(%struct.q6v5_wcss*) #1

declare dso_local i32 @qcom_q6v5_wait_for_start(i32*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
