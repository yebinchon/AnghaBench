; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5_wcss = type { i32, i64, i32, i32, i32, i32 }

@SSCAON_CONFIG = common dso_local global i64 0, align 8
@SSCAON_ENABLE = common dso_local global i32 0, align 4
@SSCAON_BUS_EN = common dso_local global i32 0, align 4
@SSCAON_BUS_MUX_MASK = common dso_local global i32 0, align 4
@SSCAON_STATUS = common dso_local global i64 0, align 8
@HALT_CHECK_MAX_LOOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't get SSCAON_STATUS rc:%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5_wcss*)* @q6v5_wcss_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_wcss_powerdown(%struct.q6v5_wcss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6v5_wcss*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.q6v5_wcss* %0, %struct.q6v5_wcss** %3, align 8
  %6 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %7 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %8 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %11 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @q6v5_wcss_halt_axi_port(%struct.q6v5_wcss* %6, i32 %9, i32 %12)
  %14 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %15 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSCAON_CONFIG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @SSCAON_ENABLE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %25 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SSCAON_CONFIG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load i32, i32* @SSCAON_BUS_EN, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @SSCAON_BUS_MUX_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %39 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SSCAON_CONFIG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = call i32 @BIT(i32 1)
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %49 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SSCAON_CONFIG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %55 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SSCAON_STATUS, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 1024
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @HALT_CHECK_MAX_LOOPS, align 4
  %65 = call i32 @readl_poll_timeout(i64 %58, i32 %59, i32 %63, i32 1000, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %1
  %69 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %70 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %101

75:                                               ; preds = %1
  %76 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %77 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @reset_control_assert(i32 %78)
  %80 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %81 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SSCAON_CONFIG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readl(i64 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @SSCAON_ENABLE, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %92 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SSCAON_CONFIG, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  %97 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %98 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @reset_control_assert(i32 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %75, %68
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @q6v5_wcss_halt_axi_port(%struct.q6v5_wcss*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
