; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_mba_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_mba_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@MSS_MSM8996 = common dso_local global i64 0, align 8
@QDSP6SS_PWR_CTL_REG = common dso_local global i64 0, align 8
@Q6SS_CLAMP_IO = common dso_local global i32 0, align 4
@QDSP6v56_CLAMP_WL = common dso_local global i32 0, align 4
@QDSP6v56_CLAMP_QMC_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.q6v5*)* @q6v5_mba_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q6v5_mba_reclaim(%struct.q6v5* %0) #0 {
  %2 = alloca %struct.q6v5*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %2, align 8
  %5 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %6 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %8 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %9 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %8, i32 0, i32 26
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %12 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %11, i32 0, i32 28
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @q6v5proc_halt_axi_port(%struct.q6v5* %7, i32 %10, i32 %13)
  %15 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %16 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %17 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %16, i32 0, i32 26
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %20 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %19, i32 0, i32 27
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @q6v5proc_halt_axi_port(%struct.q6v5* %15, i32 %18, i32 %21)
  %23 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %24 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %25 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %24, i32 0, i32 26
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %28 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %27, i32 0, i32 25
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @q6v5proc_halt_axi_port(%struct.q6v5* %23, i32 %26, i32 %29)
  %31 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %32 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MSS_MSM8996, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %1
  %37 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %38 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %37, i32 0, i32 24
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @Q6SS_CLAMP_IO, align 4
  %44 = load i32, i32* @QDSP6v56_CLAMP_WL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @QDSP6v56_CLAMP_QMC_MEM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %52 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %51, i32 0, i32 24
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %36, %1
  %58 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %59 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %60 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %59, i32 0, i32 23
  %61 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %62 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %61, i32 0, i32 22
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %65 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %64, i32 0, i32 21
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %58, i32* %60, i32 0, i32 %63, i32 %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @WARN_ON(i32 %68)
  %70 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %71 = call i32 @q6v5_reset_assert(%struct.q6v5* %70)
  %72 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %73 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %76 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %75, i32 0, i32 20
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %79 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %78, i32 0, i32 19
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @q6v5_clk_disable(i32 %74, i32 %77, i32 %80)
  %82 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %83 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %86 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %85, i32 0, i32 18
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %89 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %88, i32 0, i32 17
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @q6v5_clk_disable(i32 %84, i32 %87, i32 %90)
  %92 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %93 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %94 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %93, i32 0, i32 16
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %97 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %96, i32 0, i32 15
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @q6v5_regulator_disable(%struct.q6v5* %92, i32 %95, i32 %98)
  %100 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %101 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %102 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %105 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @q6v5_pds_disable(%struct.q6v5* %100, i32 %103, i32 %106)
  %108 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %109 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %110 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %109, i32 0, i32 12
  %111 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %112 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %115 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %108, i32* %110, i32 0, i32 %113, i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @WARN_ON(i32 %118)
  %120 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %121 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %120, i32 0, i32 9
  %122 = call i32 @qcom_q6v5_unprepare(i32* %121)
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* %3, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %152

125:                                              ; preds = %57
  %126 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %127 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %128 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %131 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @q6v5_pds_disable(%struct.q6v5* %126, i32 %129, i32 %132)
  %134 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %135 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %138 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %141 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @q6v5_clk_disable(i32 %136, i32 %139, i32 %142)
  %144 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %145 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %146 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.q6v5*, %struct.q6v5** %2, align 8
  %149 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @q6v5_regulator_disable(%struct.q6v5* %144, i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %125, %57
  ret void
}

declare dso_local i32 @q6v5proc_halt_axi_port(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @q6v5_xfer_mem_ownership(%struct.q6v5*, i32*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @q6v5_reset_assert(%struct.q6v5*) #1

declare dso_local i32 @q6v5_clk_disable(i32, i32, i32) #1

declare dso_local i32 @q6v5_regulator_disable(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @q6v5_pds_disable(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @qcom_q6v5_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
