; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64 }
%struct.qcom_adsp = type { i32, i32, i32, i32, i32, i32, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"adsp clk_enable failed\0A\00", align 1
@QDSP6SS_XO_CBCR = common dso_local global i64 0, align 8
@QDSP6SS_SLEEP_CBCR = common dso_local global i64 0, align 8
@QDSP6SS_CORE_CBCR = common dso_local global i64 0, align 8
@RST_EVB_REG = common dso_local global i64 0, align 8
@CORE_START_REG = common dso_local global i64 0, align 8
@BOOT_CMD_REG = common dso_local global i64 0, align 8
@BOOT_STATUS_REG = common dso_local global i64 0, align 8
@BOOT_FSM_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to bootup adsp\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"start timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @adsp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_start(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.qcom_adsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %7 = load %struct.rproc*, %struct.rproc** %3, align 8
  %8 = getelementptr inbounds %struct.rproc, %struct.rproc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.qcom_adsp*
  store %struct.qcom_adsp* %10, %struct.qcom_adsp** %4, align 8
  %11 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %12 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %11, i32 0, i32 1
  %13 = call i32 @qcom_q6v5_prepare(i32* %12)
  %14 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %15 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_prepare_enable(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %149

21:                                               ; preds = %1
  %22 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INT_MAX, align 4
  %26 = call i32 @dev_pm_genpd_set_performance_state(i32 %24, i32 %25)
  %27 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %28 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_get_sync(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %144

34:                                               ; preds = %21
  %35 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %36 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %39 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_bulk_prepare_enable(i32 %37, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %46 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %135

49:                                               ; preds = %34
  %50 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %51 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QDSP6SS_XO_CBCR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 1, i64 %54)
  %56 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %57 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @QDSP6SS_SLEEP_CBCR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 1, i64 %60)
  %62 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %63 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @QDSP6SS_CORE_CBCR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 1, i64 %66)
  %68 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %69 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 4
  %72 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %73 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RST_EVB_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %79 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CORE_START_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 1, i64 %82)
  %84 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %85 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BOOT_CMD_REG, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 1, i64 %88)
  %90 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %91 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BOOT_STATUS_REG, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @BIT(i32 0)
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* @BOOT_FSM_TIMEOUT, align 4
  %102 = call i32 @readl_poll_timeout(i64 %94, i32 %95, i32 %100, i32 10, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %49
  %106 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %107 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %127

110:                                              ; preds = %49
  %111 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %112 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %111, i32 0, i32 1
  %113 = load i32, i32* @HZ, align 4
  %114 = mul nsw i32 5, %113
  %115 = call i32 @msecs_to_jiffies(i32 %114)
  %116 = call i32 @qcom_q6v5_wait_for_start(i32* %112, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @ETIMEDOUT, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %123 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %127

126:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %154

127:                                              ; preds = %121, %105
  %128 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %129 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %132 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @clk_bulk_disable_unprepare(i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %127, %44
  %136 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %137 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_pm_genpd_set_performance_state(i32 %138, i32 0)
  %140 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %141 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @pm_runtime_put(i32 %142)
  br label %144

144:                                              ; preds = %135, %33
  %145 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %146 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @clk_disable_unprepare(i32 %147)
  br label %149

149:                                              ; preds = %144, %20
  %150 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %151 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %150, i32 0, i32 1
  %152 = call i32 @qcom_q6v5_unprepare(i32* %151)
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %149, %126
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @qcom_q6v5_prepare(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_pm_genpd_set_performance_state(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_bulk_prepare_enable(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qcom_q6v5_wait_for_start(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @qcom_q6v5_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
